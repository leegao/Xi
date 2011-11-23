package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class ArgTile extends Tile {
	TempRegister r;
	int pos, size;
	public ArgTile(TempRegister r, int pos, int size) {
		this.r = r;
		this.pos = pos;
		this.size = size;
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		if (pos < TempRegister.free_registers.length)
			asm.add(new OPER("movq %"+TempRegister.free_registers[pos].name+", %d0", new TempRegister[]{}, r));
		else
			//Expr arg = new Mem(new Binop(Binop.PLUS, new Temp(TempRegister.FP), new Const((n-i)*8+8)));
			asm.add(new OPER("movq " + ((pos-TempRegister.free_registers.length+1)*8+8) + "(%rbp), %d0", new TempRegister[]{}, r));
		return asm;
	}
}
