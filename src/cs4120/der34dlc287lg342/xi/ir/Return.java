package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.tiles.ReturnTile;

public class Return extends LabelNode {
	public Return(Label l){
		super(l);
	}
	
	@Override
	public Seq lower(){
		return new Seq(this);
	}
	
	@Override 
	public ReturnTile munch() {
		return new ReturnTile();
	}
}
