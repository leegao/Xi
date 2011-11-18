package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class AndTile extends BinopTile {
	public AndTile(Tile left, Tile right){
		super(left, right);
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = before();
		asm.add(new OPER("andq %s0, %d0", new TempRegister[]{right.out, out}, out));
		return asm;
	}
}
