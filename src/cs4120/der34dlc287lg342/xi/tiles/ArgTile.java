package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class ArgTile extends Tile {
	TempRegister r;
	int pos;
	public ArgTile(TempRegister r, int pos) {
		this.r = r;
		this.pos = pos;
	}
	
	public ArrayList<Assembly> att(){
		return "movq %"+TempRegister.free_registers[pos].name+", "+r;
	}
}
