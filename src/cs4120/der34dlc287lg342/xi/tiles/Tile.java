package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public abstract class Tile {
	public TempRegister out;
	
	public String att(){
		return ""+this.getClass().getSimpleName()+"\n";
	}
}
