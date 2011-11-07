package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.tiles.NameTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class Name extends Expr {
	public Label label;
	public Name(Label label){
		this.label = label;
	}
	
	@Override
	public Eseq lower(){
		return new Eseq(this, new Seq());
	}
	
	@Override
	public String label(){
		return ""+label;
	}
	
	public Tile munch(){
		return new NameTile(label);
	}
}
