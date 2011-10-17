package cs4120.der34dlc287lg342.xi.ir.translate;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class LowerCjump {
	Seq seq;
	public LowerCjump(Seq seq){
		this.seq = seq;
	}
	
	public Seq translate(){
		Seq ret = new Seq();
		// Go through the seq
		ArrayList<VisualizableTreeNode> arr = (ArrayList<VisualizableTreeNode>)ret.children();
		ArrayList<VisualizableTreeNode> children = (ArrayList<VisualizableTreeNode>)seq.children();
		for (int i = 0; i < children.size(); i++){
			Stmt child = (Stmt)children.get(i);
			if (child instanceof Cjump){
				// get the label of the Cjump to reorder blocks
				Cjump cjump = (Cjump)child;
				Label iffalse = cjump.iffalse, iftrue = cjump.iftrue;
				// peek at the next label
				if (children.get(i+1) instanceof LabelNode){
					LabelNode label = (LabelNode) children.get(i+1);
					
				} else {
					// Case 3: Create a new false label lf and rewrite the cjump as
					// cjump(expr, a, b, iftrue, lf)
					// lf:
					// jump(iffalse)
				}
			} else {
				ret.add(child);
			}
		}
		return ret;
	}
}
