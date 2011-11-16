package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class XorTile extends BinopTile {
	public XorTile(Tile left, Tile right){
		super(left, right);
	}
	
	public ArrayList<Assembly> att(){
		String asm = before();
		asm += "xorq %r14, "+out+"\n";
		return asm;
	}
}
