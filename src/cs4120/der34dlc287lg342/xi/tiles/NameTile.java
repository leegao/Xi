package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class NameTile extends Tile{
	Label label;
	public NameTile(Label label) {
		this.label = label;
	}
	
	public ArrayList<Assembly> att(){
		out = new TempRegister();
		return null;
	}
	
	public String toString(){
		return label+"(%rip)";
	}
}
