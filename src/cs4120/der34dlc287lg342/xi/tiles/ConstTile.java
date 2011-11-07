package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class ConstTile extends Tile {
	public long value;

	public ConstTile(long value) {
		this.value = value;
	}
	
	public String att(){
		out = new TempRegister();
		return "movq $"+value+", "+out+"\n";
	}
	
	public String out(){
		return "$"+value;
	}
}
