package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class NameTile extends Tile{
	Label label;
	public NameTile(Label label) {
		this.label = label;
	}
	
	public String att(){
		out = new TempRegister();
		return "movq $"+label+", "+out+"\n";
	}
}
