package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.MOVE;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class DivTile extends BinopTile {
	public DivTile(Tile left, Tile right){
		super(left, right);
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		//TempRegister a = new TempRegister(), d = new TempRegister();
		asm.addAll(left.att());
		asm.addAll(right.att());
		asm.add(new OPER("pushq %rdx", new TempRegister[]{}, null));
		asm.add(new OPER("pushq %rax", new TempRegister[]{}, null));

		asm.add(new OPER("movq %s0, %rax", new TempRegister[]{}, TempRegister.RV));
		asm.add(new OPER("movq $0, %rdx", new TempRegister[]{}, TempRegister.RDX));
		
		asm += "movq "+right.out+", %r14\n";
		asm += "idivq %r14\n";
		out = new TempRegister();
		asm += "movq %rax, "+out+"\n";
		
		asm.add(new OPER("popq %rax", new TempRegister[]{}, null));
		asm.add(new OPER("popq %rdx", new TempRegister[]{}, null));
		return asm;
	}
}
