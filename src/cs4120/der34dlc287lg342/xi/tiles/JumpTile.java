package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class JumpTile extends Tile {
	public Label label;
	
	public JumpTile(Label label) {
		this.label = label;
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.add(new OPER("jmp %to", new TempRegister[]{}, null, label));
		return asm;
	}
}
