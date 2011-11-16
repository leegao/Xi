package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class ConstTile extends Tile {
	public long value;

	public ConstTile(long value) {
		this.value = value;
	}
	
	public ArrayList<Assembly> att(){
		out = new TempRegister();
		return "movq $"+value+", "+out+"\n";
	}
	
	public String out(){
		return "$"+value;
	}
}
