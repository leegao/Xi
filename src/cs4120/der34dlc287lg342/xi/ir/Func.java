package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class Func extends Seq {
	public Label name;
	public Func(Label name_node, Stmt... stmts){
		super(stmts);
		name = name_node;
	}
	
	public String prettyPrint(){
		String str = "[Func:"+name+"]\n";
		for (VisualizableTreeNode child : children){
			str += ((Stmt)child).prettyPrint() + "\n";
		}
		return str;
	}
}
