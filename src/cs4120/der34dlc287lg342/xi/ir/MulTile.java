package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import cs4120.der34dlc287lg342.xi.tiles.BinopTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class MulTile extends BinopTile {
	public MulTile(Tile left, Tile right){
		super(left, right);
	}
	
	public String att(){
		String asm = before();
		asm += "imulq %r14, %r15\n";
		out = new TempRegister();
		asm += "movq %r15, "+out+"\n";
		return asm;
	}
}
