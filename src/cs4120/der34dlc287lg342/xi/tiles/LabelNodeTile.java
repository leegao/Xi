package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class LabelNodeTile extends Tile{
	public Label name;
	public LabelNodeTile(Label name){
		this.name = name;
	}
	
	public ArrayList<Assembly> att(){
		return ""+name+":";
	}
}
