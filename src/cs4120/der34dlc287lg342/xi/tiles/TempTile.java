package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class TempTile extends Tile {
	public TempTile(TempRegister register) {
		this.out = register;
	}

	public String att(){
		return "";
	}
}
