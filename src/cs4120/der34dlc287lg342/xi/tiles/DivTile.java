package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class DivTile extends BinopTile {
	public DivTile(Tile left, Tile right){
		super(left, right);
	}
	
	public String att(){
		String asm = "";
		TempRegister a = new TempRegister(), d = new TempRegister();
		asm += left.att();
		asm += right.att();
		asm += "movq %rdx, "+d+"\n";
		asm += "movq %rax, "+a+"\n";
		asm += "movq "+left.out+", %rax\n";
		asm += "movq $0, %rdx\n";
		asm += "movq "+right.out+", %r14\n";
		asm += "idivq %r14\n";
		out = new TempRegister();
		asm += "movq %rax, "+out+"\n";
		asm += "movq " + d + ", %rdx\n";
		asm += "movq " + a + ", %rax\n";
		return asm;
	}
}
