package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class LabelNode extends Stmt {
	public Label label;
	
	public LabelNode(Label label){
		this.label = label;
	}
	
	@Override
	public Seq lower(){
		return new Seq(this);
	}
}
