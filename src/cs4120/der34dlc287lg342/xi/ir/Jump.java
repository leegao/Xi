package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.tiles.JumpTile;

public class Jump extends Stmt {
	public Label label;
	
	public Jump(Label label){
		this.label = label;
	}
	
	@Override
	public Seq lower(){
		return new Seq(this);
	}
	
	@Override
	public JumpTile munch() {
		return new JumpTile(label);
	}
}
