package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class LshTile extends BinopTile {
	public LshTile(Tile left, Tile right){
		super(left, right);
	}
	
	public String att(){
		String asm = "";
		if (!(left instanceof ConstTile))
			asm += left.att();
		if (!(right instanceof ConstTile))
			asm += right.att();
		out = new TempRegister();
		asm += "movq "+left.out()+", %r15\n";
		asm += "salq "+right.out()+", %r15\n";
		asm += "movq %r15, "+out+"\n";
		return asm;
	}
}
