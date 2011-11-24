package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class DeadCodeElimination {
	CFG node;
	ArrayList<CFG> worklist;
	public DeadCodeElimination(CFG node){
		this.node = node;
		worklist = new ArrayList<CFG>();
		make_worklist(node, new HashSet<CFG>());
	}
	
	public void make_worklist(CFG node, HashSet<CFG> seen){
		if (node == null) return;
		if (seen.contains(node)) return;
		seen.add(node);
		
		if (node.ir instanceof Move && ((Move)node.ir).dest instanceof Temp)
			worklist.add(node);
		
		for (CFG next : node.succ())
			make_worklist(next, seen);
	}
	
	public void analyze(){
		while (!worklist.isEmpty()){
			CFG node = worklist.get(0);
			worklist.remove(0);
			//System.out.println(node);
			TempRegister r = ((Temp)((Move)node.ir).dest).temp;
			if (r.equals(TempRegister.RV)) continue;
			//System.out.println(r + " "+ live_out(node));
			if (!live_out(node).contains(r)){
				
				// remove this node
				// moves are guaranteed only a single child, but not parent
				for (CFG prev : node.pred()){
					if (prev.child1 == node){
						prev.child1 = node.child1;
					} else {
						prev.child2 = node.child1;
					}
				}
				
				if (node.child1 != null){
					node.child1.parents = node.parents;
				}
			}
		}
	}
	
	public HashSet<TempRegister> live_out(CFG node){
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		for (CFG next : node.succ()){
			set.addAll(next.in_live);
		}
		return set;
	}
}
