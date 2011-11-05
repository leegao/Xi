package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.tiles.CallTile;
import cs4120.der34dlc287lg342.xi.tiles.LabelNodeTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class LabelNode extends Stmt {
	public Label label;
	
	public LabelNode(Label label){
		this.label = label;
	}
	
	@Override
	public Seq lower(){
		return new Seq(this);
	}
	
	@Override
	public boolean equals(Object that){
		if (that instanceof LabelNode){
			LabelNode other = (LabelNode)that;
			return label == other.label;
		}
		return false;
	}
	
	@Override
	public Tile munch() {
		return new LabelNodeTile(label);
	}
}
