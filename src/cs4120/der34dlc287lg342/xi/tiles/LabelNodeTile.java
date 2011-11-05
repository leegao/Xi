package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class LabelNodeTile extends Tile{
	public Label name;
	public LabelNodeTile(Label name){
		this.name = name;
	}
	
	public String att(){
		return ""+name+":";
	}
}
