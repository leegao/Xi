package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class Move_Inc_Reg extends Tile{
	
	TempRegister reg;
	
	public Move_Inc_Reg(TempRegister reg) {
		this.reg = reg;
	}
	
	public String att() {
		return "incq " + reg;
	}

}
