package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
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
	public Hashtable<TempRegister, Integer> deg;
	HashSet<TempRegister> potentialSpills;
	public InterferenceGraph(CFG cfg){
		adjacent = new Hashtable<TempRegister, HashSet<TempRegister>>();
		moves = new Hashtable<TempRegister, HashSet<TempRegister>>();
		coalesced = new Hashtable<TempRegister, TempRegister>();
		deg = new Hashtable<TempRegister, Integer>();
		simplifyStack = new ArrayList<Tuple<TempRegister, TempRegister>>();
		potentialSpills = new HashSet<TempRegister>();
		build(cfg);
		python("g");
		int last_deg = 0;
		
		while (last_deg != deg.size()){
			last_deg = deg.size();
			System.out.println(deg);
			simplify();
		}
		
		find_spills();
		
		//coalesce();
	}
	
	private void find_spills() {
		for (TempRegister r : nodes())
			potentialSpills.add(r);
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
}