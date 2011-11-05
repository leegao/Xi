package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class ModTile extends BinopTile {
	public ModTile(Tile left, Tile right){
		super(left, right);
	}
	
	public String att(){
		String asm = "";
		TempRegister a = new TempRegister(), d = new TempRegister();
		asm += "movq %rdx, "+d+"\n";
		asm += "movq %rax, "+a+"\n";
		asm += "movq "+left.out+", %rax\n";
		asm += "movq "+right.out+", %r14\n";
		asm += "idiv %r14\n";
		out = new TempRegister();
		asm += "movq %rdx, "+out+"\n";
		asm += "movq " + d + "%rdx\n";
		asm += "movq " + a + "%rax\n";
		return asm;
	}
}
