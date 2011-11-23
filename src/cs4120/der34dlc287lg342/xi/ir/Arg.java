package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import cs4120.der34dlc287lg342.xi.tiles.ArgTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class Arg extends Stmt {
	public TempRegister r;
	public int pos, size;
	public Arg(TempRegister r, int pos, int size){
		this.r = r;
		this.pos = pos;
		this.size = size;
	}
	
	public Tile munch(){
		return new ArgTile(r, pos, size);
	}
}
