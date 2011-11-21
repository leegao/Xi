package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class LivenessWorklist {
	public ArrayList<AssemblyCFG> worklist;
	AssemblyCFG node;
	
	public LivenessWorklist(AssemblyCFG node) {
		this.node = node;
		worklist = new ArrayList<AssemblyCFG>();
		
		generateWorklist(this.node, new HashSet<AssemblyCFG>());
	}
	
	private void generateWorklist(AssemblyCFG node, HashSet<AssemblyCFG> seen) {
		if (seen.contains(node)){
			return;
		} else {
			seen.add(node);
			worklist.add(node);
			
			if(node.child1 != null) 
				generateWorklist(node.child1, seen);
			
			if (node.child2 != null) 
				generateWorklist(node.child2, seen);
		}
	}
	
	public void analyze() {
		
		while (!worklist.isEmpty()) {
			AssemblyCFG node = worklist.get(0);
			worklist.remove(0);
			boolean changed = false;
			
			for (TempRegister reg : node.use) {
				if (!node.in_wl.contains(reg)) {
					node.in_wl.add(reg);
					changed = true;
				}
			}
			
			if( node.child1 != null) {
				for (TempRegister reg : node.child1.in_wl) {
					if (!node.def.contains(reg) && !node.in_wl.contains(reg))  {
						node.in_wl.add(reg);
						changed = true;
					}
				}
			}
			
			if( node.child2 != null) {
				for (TempRegister reg : node.child2.in_wl) {
					if (!node.def.contains(reg) && !node.in_wl.contains(reg)) {
						node.in_wl.add(reg);
						changed = true;
					}
				}
			}
			
			if (changed) {
				for (AssemblyCFG parent : node.parents) {
					if (!worklist.contains(parent)) {
						worklist.add(parent);
					}
				}
			}
		}
	}
	

}
