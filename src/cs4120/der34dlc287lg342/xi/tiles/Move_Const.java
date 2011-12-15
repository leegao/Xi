package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class Move_Const extends Tile{
	long value;
	public Tile dest;
	
	public Move_Const(long value, Tile dest) {
		this.dest = dest;
		this.value = value;
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		//System.out.println(src + " : " + dest);
		asm.addAll(dest.att());
		asm.add(new OPER("movq $" + value + ", %d0", new TempRegister[]{}, dest.out));
		return asm;
	}

}
