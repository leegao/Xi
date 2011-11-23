package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.Stack;

import cs4120.der34dlc287lg342.xi.assembly.MOVE;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class InterferenceGraph {
	public ArrayList<Tuple> adjacent;
	public Hashtable<TempRegister, HashSet<MOVE>> moves;
	public Hashtable<TempRegister, TempRegister> alias;
	public Hashtable<TempRegister, Integer> deg, coloring;
	public HashSet<TempRegister> spills, coalesced, colored;
	ArrayList<TempRegister> initial;
	Queue<MOVE> move_worklist, active_moves, frozen_moves;
	Queue<TempRegister> simplify_worklist, spill_worklist, freeze_worklist;
	Queue<TempRegister> select_stack;
	
	public AssemblyCFG cfg;
	public HashSet<TempRegister> precolored;
	private Stack<MOVE> coalesced_moves;
	private Stack<MOVE> constrained_moves;
	
	ArrayList<Integer> ok_colors = new ArrayList<Integer>();
	
	public InterferenceGraph(AssemblyCFG cfg){
		adjacent = new ArrayList<Tuple>();
		moves = new Hashtable<TempRegister, HashSet<MOVE>>();
		alias = new Hashtable<TempRegister, TempRegister>();
		deg = new Hashtable<TempRegister, Integer>();
		
		simplify_worklist = new ArrayDeque<TempRegister>();
		spill_worklist = new ArrayDeque<TempRegister>();
		freeze_worklist = new ArrayDeque<TempRegister>();
		select_stack = new ArrayDeque<TempRegister>();
		
		coloring = new Hashtable<TempRegister, Integer>();
		spills = new HashSet<TempRegister>();
		colored = new HashSet<TempRegister>();
		initial = new ArrayList<TempRegister>();
		precolored = new HashSet<TempRegister>();
		coalesced = new HashSet<TempRegister>();
		
		move_worklist = new ArrayDeque<MOVE>();
		active_moves = new ArrayDeque<MOVE>();
		coalesced_moves = new Stack<MOVE>();
		constrained_moves = new Stack<MOVE>();
		frozen_moves = new ArrayDeque<MOVE>();
		this.cfg = cfg;
		
		for (int i = 0; i < Register.callee.length; i++) ok_colors.add(i);
		
		build(cfg);
		make_worklist();
		
		
		do{
			if (!simplify_worklist.isEmpty()){
				simplify();
			} else if (!move_worklist.isEmpty()){
				coalesce();
			} else if (!freeze_worklist.isEmpty()){
				freeze();
			} else if (!spill_worklist.isEmpty()){
				select();
			}
		} while(!(simplify_worklist.isEmpty() && move_worklist.isEmpty()
			   && freeze_worklist.isEmpty() && spill_worklist.isEmpty()));
		
		assign_colors();
		
		//System.out.println(coloring);
		//System.out.println(spills);
	}

	private void assign_colors() {
		while (!select_stack.isEmpty()){
			TempRegister n = select_stack.poll();
			ArrayList<Integer> colors = new ArrayList<Integer>(ok_colors);
			for (TempRegister w : adjacent(n)){
				HashSet<TempRegister> colored = new HashSet<TempRegister>(this.colored);
				colored.addAll(precolored);
				if (colored.contains(get_alias(w))){
					colors.remove(coloring.get(get_alias(w)));
				}
			}
			
			if (colors.isEmpty()){
				spills.add(n);
			} else{
				this.colored.add(n);
				coloring.put(n, colors.get(0));
			}
		}
		for (TempRegister n : coalesced){
			if (!spills.contains(get_alias(n)))
				coloring.put(n, coloring.get(get_alias(n)));
			else
				spills.add(n);
		}
	}

	private void select() {
		TempRegister r = spill_worklist.poll();
		//System.out.println("Select: "+r);
		simplify_worklist.offer(r);
		freeze_moves(r);
	}

	private void freeze() {
		TempRegister u = freeze_worklist.poll();
		simplify_worklist.offer(u);
		freeze_moves(u);
	}

	private void freeze_moves(TempRegister u) {
		for (MOVE m : node_moves(u)){
			TempRegister x = m.dest, y = m.src, v;
			if (get_alias(y).equals(get_alias(u))){
				v = get_alias(x);
			} else {
				v = get_alias(y);
			}
			active_moves.remove(m);
			frozen_moves.offer(m);
			
			if (freeze_worklist.contains(v) && node_moves(v).isEmpty()){
				freeze_worklist.remove(v);
				simplify_worklist.offer(v);
			}
		}
	}

	private void coalesce() {
		MOVE m = move_worklist.poll();
		TempRegister u = get_alias(m.src), v = get_alias(m.dest);
		if (precolored.contains(v)){
			TempRegister t = u;
			u = v;
			v = t;
		}
		if (u.equals(v)){
			coalesced_moves.push(m);
			add_worklist(u);
		// precolored.contains(v) || adjacent.contains(new Tuple(u,v))
		} else if (adjacent.contains(new Tuple(u,v))){
			
			constrained_moves.push(m);
			add_worklist(u);
			add_worklist(v);
		//(precolored.contains(u) && allOK(u,v)) || (!precolored.contains(u) &&
		} else if (conservative(u,v)){
			
			coalesced_moves.push(m);
			combine(u,v);
			add_worklist(u);
		} else {
			active_moves.offer(m);
		}
		
	}

	private void combine(TempRegister u, TempRegister v) {
		if (freeze_worklist.contains(v))
			freeze_worklist.remove(v);
		else
			spill_worklist.remove(v);
		
		coalesced.add(v);
		alias.put(v, u);
		moves.get(u).addAll(moves.get(v));
		enable_moves(v);
		
		for (TempRegister t : adjacent(v)){
			add_adj(new Tuple(t,u));
			decrement_degree(t);
		}
		if (deg.get(u) >= Register.callee.length && freeze_worklist.contains(u)){
			freeze_worklist.remove(u);
			spill_worklist.offer(u);
		}
	}

	private void enable_moves(TempRegister v) {
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		set.add(v);
		enable_moves(set);
	}

	private boolean conservative(TempRegister u, TempRegister v) {
		HashSet<TempRegister> adj = adjacent(u);
		adj.addAll(adjacent(v));
		return conservative(adj);
	}

	public void make_worklist(){
		Object arr[] = initial.toArray();
		for (Object o : arr){
			TempRegister r = (TempRegister)o;
			initial.remove(r);
			
			if (this.deg.get(r) >= Register.callee.length){
				spill_worklist.offer(r);
			} else if (!node_moves(r).isEmpty()){
				freeze_worklist.offer(r);
			} else {
				simplify_worklist.offer(r);
			}
		}
	}
	
	private HashSet<MOVE> node_moves(TempRegister r) {
		if (!moves.contains(r)) return new HashSet<MOVE>();
		HashSet<MOVE> set1 = moves.get(r);
		HashSet<MOVE> set2 = new HashSet<MOVE>();
		set2.addAll(move_worklist);
		set2.addAll(active_moves);
		
		HashSet<MOVE> ret = new HashSet<MOVE>();
		for (MOVE m : set1){
			if (set2.contains(m))
				ret.add(m);
		}
		return ret;
	}

	public void simplify(){
		TempRegister r = simplify_worklist.poll();
		select_stack.offer(r);
		for (Tuple t : adjacent)
			if (t.contains(r)){
				TempRegister m = t.other(r);
				decrement_degree(m);
			}
		
	}
	
	private void decrement_degree(TempRegister m) {
		int d = deg.get(m);
		deg.put(m, d-1);
		if (d == Register.callee.length){
			HashSet<TempRegister> adj = adjacent(m);
			adj.add(m);
			enable_moves(adj);
			spill_worklist.remove(m);
			if (!node_moves(m).isEmpty())
				freeze_worklist.offer(m);
			else
				simplify_worklist.offer(m);
		}
	}
	
	private void enable_moves(HashSet<TempRegister> adj) {
		for (TempRegister n : adj){
			for (MOVE m : node_moves(n)){
				if (active_moves.contains(m)){
					active_moves.remove(m);
					move_worklist.offer(m);
				}
			}
		}
		
	}

	private HashSet<TempRegister> adjacent(TempRegister r){
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		for (Tuple t : adjacent)
			if (t.contains(r)){
				TempRegister m = t.other(r);
				set.add(m);
			}
		return set;
	}

	public void build(AssemblyCFG node){
		build_(node, new HashSet<AssemblyCFG>());
	}
	
	public void build_(AssemblyCFG node, HashSet<AssemblyCFG> seen){
		if (seen.contains(node))
			return;
		seen.add(node);
		
		if (node == null){
			return;
		}
		
		
		// initialize nodes
		for (TempRegister r : node.use){
			if (!initial.contains(r))
			initial.add(r);
			if (!deg.containsKey(r))
				deg.put(r, 0);
		}
		
		for (TempRegister r : node.def){
			if (!initial.contains(r))
			initial.add(r);
			if (!deg.containsKey(r))
				deg.put(r, 0);
		}
		
		HashSet<TempRegister> live = node.in_wl;
		if (node.asm instanceof MOVE){
			MOVE mov = (MOVE)node.asm;
			//live.removeAll(mov.use());
			TempRegister def = mov.dest, use = mov.src;
			for (TempRegister n : new TempRegister[]{def, use}){
				if (!moves.containsKey(n)) moves.put(n, new HashSet<MOVE>());
				moves.get(n).add(mov);
			}
			move_worklist.offer(mov);
			if (!deg.containsKey(def)) deg.put(def, 0);
			if (!deg.containsKey(use)) deg.put(use, 0);
		}
		//live.addAll(node.asm.def());
		for (TempRegister a : live){
			for (TempRegister b : live){
				add_adj(new Tuple(b,a));
			}
		}

		// we want to traverse backwards
		build_(node.child1, seen);
		build_(node.child2, seen);
	}
	
	public void add_worklist(TempRegister u){
		if (node_moves(u).isEmpty() && deg.get(u) < Register.callee.length){
			freeze_worklist.remove(u);
			simplify_worklist.offer(u);
		}
	}
	
	public boolean allOK(TempRegister u, TempRegister v){
		for (TempRegister t : adjacent(v)){
			if (!OK(t,u)) return false;
		}
		return true;
	}
	
	public boolean OK(TempRegister t, TempRegister r){
		return deg.get(t) < Register.callee.length || precolored.contains(t) || adjacent.contains(new Tuple(t,r));
	}
	
	public boolean conservative(Collection<TempRegister> nodes){
		int k = 0;
		for (TempRegister r : nodes){
			if (deg.get(r) >= Register.callee.length)
				k++;
		}
		return k < Register.callee.length;
	}
	
	public TempRegister get_alias(TempRegister n){
		if (coalesced.contains(n)){
			return get_alias(alias.get(n));
		}
		return n;
	}
	
	public void add_adj(Tuple t){
		if (!adjacent.contains(t)){
			adjacent.add(t);
			TempRegister a = t.getKey(), b = t.getValue();
			if (!deg.containsKey(a)){
				deg.put(a, 0);
				if (!initial.contains(a))
				initial.add(a);
			}
			deg.put(a, deg.get(a)+1);
			if (!deg.containsKey(b)){
				deg.put(b, 0); 
				if (!initial.contains(b))
				initial.add(b);
			}
			deg.put(b, deg.get(b)+1);
		}
	}
	
	
	public Set<TempRegister> nodes(){
		HashSet<TempRegister> r = new HashSet<TempRegister>();
		r.addAll(deg.keySet());
		return r;
	}
	
	public HashSet<TempRegister> liveOut(AssemblyCFG node){
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		if (node.child1 != null)
			set.addAll(node.child1.in_wl);
		if (node.child2 != null)
			set.addAll(node.child2.in_wl);
		return set;
	}
	
//	public void python(String id){
//		for (TempRegister r : adjacent.keySet()){
//			for (TempRegister s : adjacent.get(r)){
//				System.out.println(id+".add('"+ r +"', '"+s+"')");
//			}
//		}
//	}
	
	public String color_of(TempRegister a){
		if (coloring.containsKey(a)){
			return "r"+coloring.get(a);
		}
		return "null";
	}
	
	public String dot_edge(){
		String dot = "graph G{\n";
		HashMap<TempRegister, String> seen = new HashMap<TempRegister, String>();
		int i = 0;
		for (Tuple e : adjacent){
			TempRegister a = e.getKey(), b = e.getValue();
			if (!seen.containsKey(a)){
				dot += "\tn"+i+" [label=\""+a+" "+color_of(a)+"\"]\n";
				seen.put(a, "n"+(i++));
			}
			if (!seen.containsKey(b)){
				dot += "\tn"+i+" [label=\""+b+" "+color_of(b)+"\"]\n";
				seen.put(b, "n"+(i++));
			}
			dot += "\t"+seen.get(a)+" -- "+seen.get(b)+"\n";
		}
		
		return dot + "}";
	}
}

class Tuple implements Entry<TempRegister, TempRegister>{
	private TempRegister key;
    private TempRegister value;

    public Tuple(TempRegister key, TempRegister value) {
        this.key = key;
        this.value = value;
    }

    @Override
    public TempRegister getKey() {
        return key;
    }

    @Override
    public TempRegister getValue() {
        return value;
    }

    @Override
    public TempRegister setValue(TempRegister value) {
    	TempRegister old = this.value;
        this.value = value;
        return old;
    }
    
    @Override
    public boolean equals(Object that){
    	if (that instanceof Entry<?, ?>){
    		Entry<TempRegister, TempRegister> other = (Entry<TempRegister, TempRegister>)that;
    		return (other.getKey().equals(getKey()) && other.getValue().equals(getValue())) ||
    			   (other.getValue().equals(getKey()) && other.getKey().equals(getValue()));
    	}
    	return false;
    }
    
    public boolean contains(TempRegister r){
    	return r.equals(key) || r.equals(value);
    }
    
    public TempRegister other(TempRegister r){
    	if (r.equals(key)) return value;
    	else if (r.equals(value)) return key;
    	return null;
    }
    
    public boolean valid(){
    	return !key.equals(value);
    }
    
    @Override
    public String toString(){
    	return "("+key+", "+value+")";
    }
}