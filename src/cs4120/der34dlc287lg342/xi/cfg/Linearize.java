package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class Linearize {
	CFG node;
	public Linearize(CFG node){
		this.node = node;
		add_labels(node, new HashSet<CFG>());
	}
	
	
	
	public boolean is_child2(ArrayList<CFG> parents, CFG node){
		for (CFG prev : parents){
			if (prev.child2 == node){
				return true;
			}
		}
		return false;
	}
	
	public boolean is_jump(ArrayList<CFG> parents, CFG node){
		for (CFG prev : parents){
			if (prev.ir instanceof Jump && prev.child1 == node){
				return true;
			}
		}
		return false;
	}
	
	public void add_labels(CFG node, HashSet<CFG> seen){
		if (seen.contains(node)){
			return;
		}
		seen.add(node);
		
		if (node.pred().size() > 1 || is_child2(node.pred(), node) || is_jump(node.pred(), node)){
			// insert label before
			CFG label = new CFG(new LabelNode(new Label()));
			seen.add(label);
			for (CFG parent : node.pred()){
				if (parent.child1 == node){
					parent.child1 = label;
				} else{
					parent.child2 = label;
				}
			}
			label.parents = node.parents;
			label.child1 = node;
			node.parents = new ArrayList<CFG>();
			node.parents.add(label);
		}
		
		for (CFG next : node.succ()){
			add_labels(next, seen);
		}
	}
}
