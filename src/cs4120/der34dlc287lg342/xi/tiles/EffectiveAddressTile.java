package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class EffectiveAddressTile extends Tile {
	public Label label;

	public EffectiveAddressTile(Label label) {
		this.label = label;
	}
	
	public ArrayList<Assembly> att(){
		out = new TempRegister();
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.add(new OPER("leaq "+label.name+"(%rip), %d0", new TempRegister[]{}, out));
		return asm;
	}
}
