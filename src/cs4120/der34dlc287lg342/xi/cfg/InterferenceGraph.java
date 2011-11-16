package cs4120.der34dlc287lg342.xi.cfg;

import java.util.HashSet;
import java.util.Hashtable;

import cs4120.der34dlc287lg342.xi.assembly.MOVE;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class InterferenceGraph {
	public Hashtable<TempRegister, HashSet<TempRegister>> adjacent, moves;
	public Hashtable<TempRegister, TempRegister> coalesced;
	HashSet<TempRegister> simplified;
	public InterferenceGraph(CFG cfg){
		adjacent = new Hashtable<TempRegister, HashSet<TempRegister>>();
		moves = new Hashtable<TempRegister, HashSet<TempRegister>>();
		coalesced = new Hashtable<TempRegister, TempRegister>();
		build(cfg);
		
		coalesce();
	}
	
	public void build(CFG node){
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
		
		build(node.child1);
		build(node.child2);
	}
	
	public void simplify(){
		
	}
	
	public void coalesce(){
		for (TempRegister d : moves.keySet()){
			for (TempRegister s : moves.get(d)){
				// if s, d not connected
				if (adjacent.get(d).contains(s))
					continue;
				// get the out from both d and s
				HashSet<TempRegister> edges = adjacent.get(d);
				edges.addAll(adjacent.get(s));
				// check that total degree is less than k
				if (edges.size() >= Register.callee.length)
					continue;
				// remove d and s
				remove_adj(d);
				remove_adj(s);
				// add new temp into coalesced
				TempRegister n = new TempRegister();
				coalesced.put(d, n);
				coalesced.put(s, n);
				// add n into adj graph
				adjacent.put(n, edges);
				for (TempRegister r : edges)
					adjacent.get(r).add(n);
			}
		}
	}
	
	public void add_adj(TempRegister a, TempRegister b){
		if (!adjacent.containsKey(a)) adjacent.put(a, new HashSet<TempRegister>());
		adjacent.get(a).add(b);
	}
	
	public void remove_adj(TempRegister r){
		HashSet<TempRegister> set = adjacent.get(r);
		for (TempRegister s : set)
			adjacent.get(s).remove(r);
		adjacent.remove(r);
	}
	
	public HashSet<TempRegister> liveOut(CFG node){
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		if (node.child1 != null)
			set.addAll(node.child1.in_wl);
		if (node.child2 != null)
			set.addAll(node.child2.in_wl);
		return set;
	}
}
