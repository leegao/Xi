package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Hashtable;

import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class IRLivenessAnalysis {
	public ArrayList<CFG> worklist;
	CFG node;
	
	public IRLivenessAnalysis(CFG node) {
		this.node = node;
		worklist = new ArrayList<CFG>();
		
		generateWorklist(this.node, new HashSet<CFG>());
	}
	
	private void generateWorklist(CFG node, HashSet<CFG> seen) {
		if (seen.contains(node)){
			return;
		} else {
			seen.add(node);
			worklist.add(node);
			node.use = CFG.use(node.ir);
			node.def = CFG.def(node.ir);
			
			if(node.child1 != null) 
				generateWorklist(node.child1, seen);
			
			if (node.child2 != null) 
				generateWorklist(node.child2, seen);
		}
	}
	
	public HashSet<TempRegister> in(CFG n, Hashtable<CFG, HashSet<TempRegister>> seen){
		if (seen.containsKey(n)){
			return seen.get(n);
		}
		HashSet<TempRegister> gen = new HashSet<TempRegister>(n.use);
		HashSet<TempRegister> cur = new HashSet<TempRegister>();
		for (CFG p : n.succ()){
			cur.addAll(p.in_live);
		}
		
		gen.addAll(kill(cur, n));
		
		seen.put(n, gen);
		
		return gen;
	}
	
	HashSet<TempRegister> kill(HashSet<TempRegister> set, CFG node){
		HashSet<TempRegister> ret = new HashSet<TempRegister>();
		for (TempRegister r : node.def)
			for (TempRegister u : set){
				if (!r.equals(u)){
					ret.add(u);
				}
			}
		
		return ret;
	}
	
	public void analyze() {
		while (!worklist.isEmpty()) {
			CFG node = worklist.get(0);
			worklist.remove(0);
			boolean changed = false;
			
			Hashtable<CFG, HashSet<TempRegister>> seen = new Hashtable<CFG, HashSet<TempRegister>>();
			seen.put(this.node, new HashSet<TempRegister>());
			
			HashSet<TempRegister> union = in(node, seen);
			changed = !union.equals(node.in_live);
			
			if (changed) {
				node.in_live = union;
				
				for (CFG parent : node.pred()) {
					if (!worklist.contains(parent)) {
						worklist.add(parent);
					}
				}
			}
		}
	}
	

}