package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class CjumpTile extends Tile{
	public Tile cond;
	public Label to;
	public CjumpTile(Tile cond, Label to){
		this.cond = cond;
		this.to = to;
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.addAll(cond.att());
		asm.add(new OPER("testq $1, %s0", cond.out, null));
		asm.add(new OPER("jne %to", new TempRegister[]{}, null, to));
		return asm;
	}
}
