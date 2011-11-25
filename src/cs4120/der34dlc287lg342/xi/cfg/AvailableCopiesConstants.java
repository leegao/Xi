package cs4120.der34dlc287lg342.xi.cfg;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Hashtable;

import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class AvailableCopiesConstants {
	public ArrayList<CFG> worklist;
	public Hashtable<CFG, HashSet<Move>> copy_map;
	public Hashtable<CFG, TempRegister> kill_map;
	public HashSet<CFG> kill_mem;
	HashSet<Move> universal;
	CFG node;
	
	public AvailableCopiesConstants(CFG node){
		this.node = node;
		worklist = new ArrayList<CFG>();
		copy_map = new Hashtable<CFG, HashSet<Move>>();
		kill_map = new Hashtable<CFG, TempRegister>();
		universal = new HashSet<Move>();
		generate_worklist(this.node, new HashSet<CFG>());
		
		// don't cache kill set
		for (CFG cfg : worklist){
			// if is a move
			//if (cfg != node){
				cfg.out_copy = new HashSet<Move>(universal);
			//}
		}
	}

	private void generate_worklist(CFG node, HashSet<CFG> seen) {
		if (seen.contains(node)){
			return;
		}
		seen.add(node);
		HashSet<Move> moves = gen(node);
		
		worklist.add(node);
		copy_map.put(node, moves);
		
		
		if(node.child1 != null) 
			generate_worklist(node.child1, seen);
		
		if (node.child2 != null) 
			generate_worklist(node.child2, seen);
	}
	
	public void analyze(){
		while (!worklist.isEmpty()) {
			CFG node = worklist.get(0);
			worklist.remove(0);
			
			boolean changed = false;
			// each iteration, recompute in with a new cache
			Hashtable<CFG, HashSet<Move>> seen = new Hashtable<CFG, HashSet<Move>>();
			seen.put(this.node, new HashSet<Move>());
			
			HashSet<Move> intersection = out(node, seen);
			changed = !intersection.equals(node.out_copy);
			
			if (changed) {
				node.out_copy = intersection;
				
				for (CFG next : node.succ()) {
					if (!worklist.contains(next)) {
						worklist.add(next);
					}
				}
			}
		}
	}
	
	public HashSet<Move> out(CFG n, Hashtable<CFG, HashSet<Move>> seen){
		if (seen.containsKey(n)){
			return seen.get(n);
		}
		HashSet<Move> gen = new HashSet<Move>();
		if (copy_map.containsKey(n))
			gen.addAll(copy_map.get(n));
		//System.out.println(n + " " + gen);
		HashSet<Move> intersect = null;
		for (CFG p : n.pred()){
			HashSet<Move> cur = kill(p.out_copy, n);
			//System.out.println("\t"+cur);
			if (intersect == null)
				intersect = cur;
			else
				intersect = CFG.intersect(cur, intersect);
		}
		if (intersect != null)
			gen.addAll(intersect);
		seen.put(n, gen);
		
		return gen;
	}
	
	public HashSet<Move> gen(CFG node){
		Stmt stmt = node.ir;
		HashSet<Move> moves = new HashSet<Move>();
		
		if (stmt instanceof Move && ((Move)stmt).dest instanceof Temp && ((Move)stmt).val instanceof Temp){
			// copy
			moves.add((Move) stmt);
			universal.add((Move) stmt);
			kill_map.put(node, ((Temp)((Move)stmt).dest).temp);
		} 
		else if (stmt instanceof Move && ((Move)stmt).dest instanceof Temp && ((Move)stmt).val instanceof Const){
			// constant
			moves.add((Move) stmt);
			universal.add((Move) stmt);
			kill_map.put(node, ((Temp)((Move)stmt).dest).temp);
		} 
		else if (stmt instanceof Move && ((Move)stmt).dest instanceof Temp){
			// no copy, but kill
			kill_map.put(node, ((Temp)((Move)stmt).dest).temp);
		}
		
		return moves;
	}
	
	HashSet<Move> kill(HashSet<Move> set, CFG node){
		HashSet<Move> ret = new HashSet<Move>();
		if (kill_map.containsKey(node)){
			TempRegister r = kill_map.get(node);
			for (Move move : set){
				TempRegister use = null;
				if (move.val instanceof Temp){
					use = ((Temp)move.val).temp;
				}
				TempRegister def = ((Temp)move.dest).temp;
				if (!r.equals(use) && !r.equals(def)){
					ret.add(move);
				}
			}
		} else {
			ret.addAll(set);
		}
		//System.out.println(set + " " + node + " " + ret);
		return ret;
	}
	
	public HashSet<Move> get_all(CFG node, HashSet<Move> all, HashSet<CFG> seen){
		if (node == null) return all;
		if (seen.contains(node))
			return all;
		seen.add(node);
		
		all.addAll(node.out_copy);
		for (CFG next : node.succ()){
			get_all(next, all, seen);
		}
		
		return all;
	}
}
