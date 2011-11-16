package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class ArgTile extends Tile {
	TempRegister r;
	int pos;
	public ArgTile(TempRegister r, int pos) {
		this.r = r;
		this.pos = pos;
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.add(new OPER("movq %"+TempRegister.free_registers[pos].name+", %d0", new TempRegister[]{}, r));
		return asm;
	}
}
