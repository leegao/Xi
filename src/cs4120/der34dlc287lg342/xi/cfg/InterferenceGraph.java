package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
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
	public Hashtable<TempRegister, HashSet<TempRegister>> adjacent, moves;
	public Hashtable<TempRegister, TempRegister> coalesced;
	public Hashtable<TempRegister, Integer> deg, coloring;
	public ArrayList<Tuple<TempRegister, TempRegister>> potentialSpills;
	public HashSet<TempRegister> spills;
	public InterferenceGraph(CFG cfg){
		adjacent = new Hashtable<TempRegister, HashSet<TempRegister>>();
		moves = new Hashtable<TempRegister, HashSet<TempRegister>>();
		coalesced = new Hashtable<TempRegister, TempRegister>();
		deg = new Hashtable<TempRegister, Integer>();
		simplifyStack = new ArrayList<Tuple<TempRegister, TempRegister>>();
		potentialSpills = new ArrayList<Tuple<TempRegister, TempRegister>>();
		coloring = new Hashtable<TempRegister, Integer>();
		spills = new HashSet<TempRegister>();
		build(cfg);
		//python("g");
		int last_deg = 0;
		
		while (last_deg != deg.size()){
			last_deg = deg.size();
			//System.out.println(deg);
			simplify();
		}
		
		find_spills();
		System.out.println(potentialSpills);
		//coalesce();
		
		select();
		//System.out.println(coloring);
		
//		for (Tuple<TempRegister, TempRegister> edge : simplifyStack){
//			potentialSpills.remove(edge);
//		}
		
//		for (Tuple<TempRegister, TempRegister> edge : potentialSpills){
//			TempRegister a = edge.getKey(), b = edge.getValue();
//			if (!coloring.containsKey(a)){
//				spills.add(a);
//			}
//			if (!coloring.containsKey(b)){
//				spills.add(b);
//			}
//		}
		
		System.out.println(spills);
		System.out.println(coloring);
		for (Tuple<TempRegister, TempRegister> edge : simplifyStack){
			TempRegister a = edge.getKey(), b = edge.getValue();
			System.out.println(edge+" "+coloring.get(a)+":"+coloring.get(b));
		}
		//System.out.println(dot_edge());
	}
	
	
	
	private void select() {
		ArrayList<Tuple<TempRegister, TempRegister>> ret = select_(simplifyStack, simplifyStack, true);
		ArrayList<Tuple<TempRegister, TempRegister>> r;
		ArrayList<Tuple<TempRegister, TempRegister>> ret_copy = (ArrayList<Tuple<TempRegister, TempRegister>>) ret.clone();
		ret_copy.addAll(potentialSpills);
		while ((r = select_spills(potentialSpills, ret_copy, false)) == null){
			for (Tuple<TempRegister, TempRegister> edge : (ArrayList<Tuple<TempRegister, TempRegister>>) potentialSpills.clone()){
				TempRegister a = edge.getKey(), b = edge.getValue();
				if (spills.contains(a) || spills.contains(b))
					potentialSpills.remove(edge);
			}
			ret_copy = (ArrayList<Tuple<TempRegister, TempRegister>>) ret.clone();
			ret_copy.addAll(potentialSpills);
		}
		//ret.addAll(r);
		simplifyStack = ret;
	}

	private ArrayList<Tuple<TempRegister, TempRegister>> select_(ArrayList<Tuple<TempRegister, TempRegister>> edges, ArrayList<Tuple<TempRegister, TempRegister>> simplifyStack, boolean err) {
		ArrayList<Tuple<TempRegister, TempRegister>> ret = new ArrayList<Tuple<TempRegister, TempRegister>>();
		
		for (Tuple<TempRegister, TempRegister> edge : edges){
			TempRegister a = edge.getKey(), b = edge.getValue();
			if (coloring.containsKey(a) && coloring.containsKey(b) && coloring.get(a) == coloring.get(b)){
				//
				System.out.println("Cannot Color " + edge + "\n");
				if (!err) continue;
				return null;
			}
			if (!err)
				System.out.println(edge);
			if (!coloring.containsKey(a)){
				HashSet<Integer> cannot = new HashSet<Integer>();
				if (coloring.containsKey(b))
					cannot.add(coloring.get(b));
				for (Tuple<TempRegister, TempRegister> e : simplifyStack){
					TempRegister x = e.getKey(), y = e.getValue();
					if (x.equals(a) || y.equals(a)){
						TempRegister z = y.equals(a) ? x : y;
						if (coloring.containsKey(z)){
							cannot.add(coloring.get(z));
						}
					}
				}
				if (!err)
					System.out.println(cannot);
				for (int i = 0; i < Register.callee.length; i++){
					if (!cannot.contains(i)){
						coloring.put(a, i);
						break;
					}
				}
			}
			
			if (!coloring.containsKey(b)){
				HashSet<Integer> cannot = new HashSet<Integer>();
				if (coloring.containsKey(a))
					cannot.add(coloring.get(a));
				for (Tuple<TempRegister, TempRegister> e : simplifyStack){
					TempRegister x = e.getKey(), y = e.getValue();
					if (x.equals(b) || y.equals(b)){
						TempRegister z = y.equals(b) ? x : y;
						if (coloring.containsKey(z))
							cannot.add(coloring.get(z));
					}
				}
				if (!err)
					System.out.println(cannot);
				for (int i = 0; i < Register.callee.length; i++){
					if (!cannot.contains(i)){
						coloring.put(b, i);
						break;
					}
				}
			}
			
			ret.add(edge);
		}
		
		return ret;
	}
	
	private ArrayList<Tuple<TempRegister, TempRegister>> select_spills(ArrayList<Tuple<TempRegister, TempRegister>> edges, ArrayList<Tuple<TempRegister, TempRegister>> simplifyStack, boolean err) {
		ArrayList<Tuple<TempRegister, TempRegister>> ret = new ArrayList<Tuple<TempRegister, TempRegister>>();
		
		for (Tuple<TempRegister, TempRegister> edge : edges){
			TempRegister a = edge.getKey(), b = edge.getValue();
			if (coloring.containsKey(a) && coloring.containsKey(b) && coloring.get(a) == coloring.get(b)){
				System.out.println("Cannot Color " + edge + "\n");
				spills.add(a);
				coloring.remove(a);
				return null;
			}
			if (!coloring.containsKey(a)){
				HashSet<Integer> cannot = new HashSet<Integer>();
				if (coloring.containsKey(b))
					cannot.add(coloring.get(b));
				for (Tuple<TempRegister, TempRegister> e : simplifyStack){
					TempRegister x = e.getKey(), y = e.getValue();
					if (x.equals(a) || y.equals(a)){
						TempRegister z = y.equals(a) ? x : y;
						if (coloring.containsKey(z)){
							cannot.add(coloring.get(z));
						}
					}
				}
				for (int i = 0; i < Register.callee.length; i++){
					if (!cannot.contains(i)){
						coloring.put(a, i);
						break;
					}
				}
			}
			
			if (!coloring.containsKey(b)){
				HashSet<Integer> cannot = new HashSet<Integer>();
				if (coloring.containsKey(a))
					cannot.add(coloring.get(a));
				for (Tuple<TempRegister, TempRegister> e : simplifyStack){
					TempRegister x = e.getKey(), y = e.getValue();
					if (x.equals(b) || y.equals(b)){
						TempRegister z = y.equals(b) ? x : y;
						if (coloring.containsKey(z))
							cannot.add(coloring.get(z));
					}
				}
				for (int i = 0; i < Register.callee.length; i++){
					if (!cannot.contains(i)){
						coloring.put(b, i);
						break;
					}
				}
			}
			
			ret.add(edge);
		}
		
		return ret;
	}

	private void find_spills() {
		for (TempRegister r : adjacent.keySet())
			for (TempRegister s : adjacent.get(r)){
				Tuple<TempRegister, TempRegister> tuple = new Tuple<TempRegister, TempRegister>(r, s);
				if (!potentialSpills.contains(tuple))
					potentialSpills.add(tuple);
			}
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
		if (node.asm instanceof MOVE){
			MOVE mov = (MOVE)node.asm;
			TempRegister d = mov.dest, s = mov.src;
			if (!moves.containsKey(d)) moves.put(d, new HashSet<TempRegister>());
			moves.get(d).add(s);
		}
		
		HashSet<TempRegister> live = node.in_wl;
		for (TempRegister r1 : live){
			for (TempRegister r2 : live){
				if (r1 != r2){
					add_adj(r1, r2);
				}
			}
		}
		
		build_(node.child1, seen);
		build_(node.child2, seen);
	}
	
	
	public ArrayList<Tuple<TempRegister, TempRegister>> simplifyStack;
	public void simplify(){
		Hashtable<TempRegister, Integer> deg = (Hashtable<TempRegister, Integer>) this.deg.clone();
		for (TempRegister r : nodes()){
			if (deg.get(r) < Register.callee.length){
				remove_adj(r);
			}
		}
	}
	
//	public void coalesce(){
//		for (TempRegister d : moves.keySet()){
//			if (!adjacent.contains(d))
//				adjacent.put(d, new HashSet<TempRegister>());
//			for (TempRegister s : moves.get(d)){
//				if (!adjacent.contains(s))
//					adjacent.put(s, new HashSet<TempRegister>());
//				// if s, d not connected
//				if (adjacent.get(d).contains(s))
//					continue;
//				// get the out from both d and s
//				HashSet<TempRegister> edges = adjacent.get(d);
//				edges.addAll(adjacent.get(s));
//				// check that total degree is less than k
//				if (edges.size() >= Register.callee.length)
//					continue;
//				// remove d and s
//				remove_adj(d);
//				remove_adj(s);
//				// add new temp into coalesced
//				TempRegister n = new TempRegister();
//				coalesced.put(d, n);
//				coalesced.put(s, n);
//				// add n into adj graph
//				adjacent.put(n, edges);
//				for (TempRegister r : edges)
//					adjacent.get(r).add(n);
//			}
//		}
//	}
	
	public void add_adj(TempRegister a, TempRegister b){
		if (!adjacent.containsKey(a)) adjacent.put(a, new HashSet<TempRegister>());
		
		if (!adjacent.get(a).contains(b)){
			adjacent.get(a).add(b);
			if (!deg.containsKey(a)) deg.put(a, 0);
			deg.put(a, deg.get(a)+1);
		}
	}
	
	public void remove_adj(TempRegister r){
		HashSet<TempRegister> set = adjacent.get(r);
		for (TempRegister s : set){
			adjacent.get(s).remove(r);
			deg.put(s, deg.get(s)-1);
			simplifyStack.add(0, new Tuple<TempRegister, TempRegister>(r, s));
		}
		adjacent.remove(r);
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
	
	public void python(String id){
		for (TempRegister r : adjacent.keySet()){
			for (TempRegister s : adjacent.get(r)){
				System.out.println(id+".add('"+ r +"', '"+s+"')");
			}
		}
	}
	
	public String color_of(TempRegister a){
		if (coloring.containsKey(a)){
			return "r"+coloring.get(a);
		}
		return "spilled";
	}
	
	public String dot_edge(){
		String dot = "graph G{\n";
		HashMap<TempRegister, String> seen = new HashMap<TempRegister, String>();
		int i = 0;
		for (Tuple<TempRegister, TempRegister> e : simplifyStack){
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

class Tuple<K, V> implements Entry<K, V>{
	private final K key;
    private V value;

    public Tuple(K key, V value) {
        this.key = key;
        this.value = value;
    }

    @Override
    public K getKey() {
        return key;
    }

    @Override
    public V getValue() {
        return value;
    }

    @Override
    public V setValue(V value) {
        V old = this.value;
        this.value = value;
        return old;
    }
    
    @Override
    public boolean equals(Object that){
    	if (that instanceof Entry<?, ?>){
    		Entry<K, V> other = (Entry<K, V>)that;
    		return (other.getKey().equals(getKey()) && other.getValue().equals(getValue())) ||
    			   (other.getValue().equals(getKey()) && other.getKey().equals(getValue()));
    	}
    	return false;
    }
    
    @Override
    public String toString(){
    	return "("+key+", "+value+")";
    }
}