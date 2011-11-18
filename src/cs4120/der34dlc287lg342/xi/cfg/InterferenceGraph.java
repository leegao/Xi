package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;

import cs4120.der34dlc287lg342.xi.assembly.MOVE;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class InterferenceGraph {
	public ArrayList<Tuple> adjacent;
	public Hashtable<TempRegister, HashSet<MOVE>> moves;
	public Hashtable<TempRegister, TempRegister> coalesced;
	public Hashtable<TempRegister, Integer> deg, coloring;
	public HashSet<TempRegister> spills, initial;
	
	HashSet<MOVE> move_worklist, active_moves;
	Stack<TempRegister> simplify_worklist, spill_worklist, freeze_worklist, select_stack;
	
	public CFG cfg;
	public HashSet<TempRegister> precolored;
	
	public InterferenceGraph(CFG cfg){
		adjacent = new ArrayList<Tuple>();
		moves = new Hashtable<TempRegister, HashSet<MOVE>>();
		coalesced = new Hashtable<TempRegister, TempRegister>();
		deg = new Hashtable<TempRegister, Integer>();
		
		simplify_worklist = new Stack<TempRegister>();
		spill_worklist = new Stack<TempRegister>();
		freeze_worklist = new Stack<TempRegister>();
		select_stack = new Stack<TempRegister>();
		
		coloring = new Hashtable<TempRegister, Integer>();
		spills = new HashSet<TempRegister>();
		initial = new HashSet<TempRegister>();
		precolored = new HashSet<TempRegister>();
		
		move_worklist = new HashSet<MOVE>();
		active_moves = new HashSet<MOVE>();
		this.cfg = cfg;
		
		build(cfg);
		make_worklist();
		
		do{
			if (!simplify_worklist.isEmpty()){
				simplify();
			}
			
			break;
		} while(!(simplify_worklist.isEmpty() && move_worklist.isEmpty()
			   && freeze_worklist.isEmpty() && spill_worklist.isEmpty()));
	}

	public void make_worklist(){
		Object arr[] = initial.toArray();
		for (Object o : arr){
			TempRegister r = (TempRegister)o;
			initial.remove(r);
			
			if (this.deg.get(r) >= Register.callee.length){
				spill_worklist.push(r);
			} else if (!node_moves(r).isEmpty()){
				freeze_worklist.push(r);
			} else {
				simplify_worklist.push(r);
			}
		}
	}
	
	private HashSet<MOVE> node_moves(TempRegister r) {
		if (!moves.contains(r)) return new HashSet<MOVE>();
		HashSet<MOVE> set1 = moves.get(r);
		HashSet<MOVE> set2 = (HashSet<MOVE>)move_worklist.clone();
		set2.addAll(active_moves);
		
		HashSet<MOVE> ret = new HashSet<MOVE>();
		for (MOVE m : set1){
			if (set2.contains(m))
				ret.add(m);
		}
		return ret;
	}

	public void simplify(){
		TempRegister r = simplify_worklist.pop();
		select_stack.push(r);
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
				freeze_worklist.push(m);
			else
				simplify_worklist.push(m);
		}
	}
	
	private void enable_moves(HashSet<TempRegister> adj) {
		for (TempRegister n : adj){
			for (MOVE m : node_moves(n)){
				if (active_moves.contains(m)){
					active_moves.remove(m);
					move_worklist.add(m);
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

	public void build(CFG node){
		build_(node, new HashSet<CFG>());
	}
	
	public void build_(CFG node, HashSet<CFG> seen){
		if (seen.contains(node))
			return;
		seen.add(node);
		
		if (node == null){
			return;
		}
		
		HashSet<TempRegister> live = node.in_wl;
		if (node.asm instanceof MOVE){
			MOVE mov = (MOVE)node.asm;
			TempRegister def = mov.dest, use = mov.src;
			for (TempRegister n : new TempRegister[]{def, use}){
				if (!moves.containsKey(n)) moves.put(n, new HashSet<MOVE>());
				moves.get(n).add(mov);
			}
			move_worklist.add(mov);
		}
		
		for (TempRegister a : live){
			for (TempRegister b : live){
				add_adj(new Tuple(a,b));
			}
		}

		// we want to traverse backwards
		build_(node.child1, seen);
		build_(node.child2, seen);
	}
	
	public void add_worklist(TempRegister u){
		if (precolored.contains(u) && node_moves(u).isEmpty() && deg.get(u) < Register.callee.length){
			freeze_worklist.remove(u);
			simplify_worklist.push(u);
		}
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
	
	public void add_adj(Tuple t){
		if (t.valid() && !adjacent.contains(t)){
			adjacent.add(t);
			TempRegister a = t.getKey(), b = t.getValue();
			if (!deg.containsKey(a)){
				deg.put(a, 0);
				initial.add(a);
			}
			deg.put(a, deg.get(a)+1);
			if (!deg.containsKey(b)){
				deg.put(b, 0); 
				initial.add(b);
			}
			deg.put(b, deg.get(b)+1);
		}
	}
	
	public void remove_adj(TempRegister r){
		for (Tuple t : (ArrayList<Tuple>)adjacent.clone()){
			if (t.contains(r)){
				adjacent.remove(t);
				TempRegister z = t.other(r);
				deg.put(z, deg.get(z)-1);
			}
		}
		deg.remove(r);
	}
	
	
	public Set<TempRegister> nodes(){
		HashSet<TempRegister> r = new HashSet<TempRegister>();
		r.addAll(deg.keySet());
		return r;
	}
	
	public HashSet<TempRegister> liveOut(CFG node){
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
		return "spilled";
	}
	
//	public String dot_edge(){
//		String dot = "graph G{\n";
//		HashMap<TempRegister, String> seen = new HashMap<TempRegister, String>();
//		int i = 0;
//		for (Tuple<TempRegister, TempRegister> e : simplifyStack){
//			TempRegister a = e.getKey(), b = e.getValue();
//			if (!seen.containsKey(a)){
//				dot += "\tn"+i+" [label=\""+a+" "+color_of(a)+"\"]\n";
//				seen.put(a, "n"+(i++));
//			}
//			if (!seen.containsKey(b)){
//				dot += "\tn"+i+" [label=\""+b+" "+color_of(b)+"\"]\n";
//				seen.put(b, "n"+(i++));
//			}
//			dot += "\t"+seen.get(a)+" -- "+seen.get(b)+"\n";
//		}
//		
//		return dot + "}";
//	}
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