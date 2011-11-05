package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class BinopTile extends Tile{
	public Tile left, right;

	public BinopTile(Tile left, Tile right){
		this.left = left;
		this.right = right;
	}
	
	public String before(){
		String asm = "";
		asm += left.att();
		asm += right.att();
		asm += "movq "+left.out+", %r15\n";
		asm += "movq "+right.out+", %r14\n";
		return asm;
	}
}
