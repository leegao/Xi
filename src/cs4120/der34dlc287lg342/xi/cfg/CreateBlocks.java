package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.*;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class CreateBlocks {
	Func func;
	public CreateBlocks(Func func){
		this.func = func;
	}
	
	public void analyze(){
		ArrayList<VisualizableTreeNode> seq = new ArrayList<VisualizableTreeNode>();
		ArrayList<Stmt> block = new ArrayList<Stmt>();
		for (VisualizableTreeNode s : func.children){
			Stmt stmt = (Stmt)s;
			if (stmt instanceof LabelNode){
				if (block.isEmpty()){
					// start a new block
					block.add(stmt);
				} else {
					// end this block
					LabelNode l = (LabelNode)stmt;
					if (!(block.get(block.size()-1) instanceof Jump) && !(block.get(block.size()-1) instanceof Cjump))
						block.add(new Jump(l.label));
					block.add(stmt);
					seq.addAll(block);
					block = new ArrayList<Stmt>();
				}
			} else if (stmt instanceof Jump || stmt instanceof Cjump){
				block.add(stmt);
				seq.addAll(block);
				block = new ArrayList<Stmt>();
			} else {
				block.add(stmt);
			}
		}
		seq.addAll(block);
		
		func.children = seq;
	}
}