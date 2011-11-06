package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class RshTile extends BinopTile {
	public RshTile(Tile left, Tile right){
		super(left, right);
	}
	
	public String att(){
		String asm = before();
		asm += "sarq %r14, %r15\n";
		out = new TempRegister();
		asm += "movq %r15, "+out+"\n";
		return asm;
	}
}
