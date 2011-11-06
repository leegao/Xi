package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class MemTile extends Tile {
	Tile tile;
	
	public MemTile(Tile tile) {
		this.tile = tile;
	}

	@Override
	public String att(){
		String asm = tile.att();
		out = new TempRegister();
		asm += "movq ("+tile.out+"), "+out;
		return asm;
	}
}
