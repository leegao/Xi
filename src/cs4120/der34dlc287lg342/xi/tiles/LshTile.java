package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.MOVE;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class LshTile extends BinopTile {
	public LshTile(Tile left, Tile right){
		super(left, right);
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.addAll(left.att());
		out = new TempRegister();
		asm.add(new MOVE(left.out, out));
		asm.add(new OPER("salq "+right.out()+", %d0", new TempRegister[]{}, out));
		
		return asm;
	}
}
