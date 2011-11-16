package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class Move_Inc_Reg extends Tile{
	
	TempRegister reg;
	
	public Move_Inc_Reg(TempRegister reg) {
		this.reg = reg;
	}
	
	public ArrayList<Assembly> att() {
		return "incq " + reg;
	}

}
