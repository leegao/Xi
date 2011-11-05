package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.tiles.ReturnTile;

public class Return extends Stmt {
	@Override
	public Seq lower(){
		return new Seq(this);
	}
	
	@Override 
	public ReturnTile munch() {
		return new ReturnTile();
	}
}
