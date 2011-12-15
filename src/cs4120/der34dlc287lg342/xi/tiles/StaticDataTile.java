package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class StaticDataTile extends Tile {
	String label;
	long i;
	
	public StaticDataTile(String label, long i) {
		this.label = label;
		this.i = i;
	}

	public ArrayList<Assembly> att(){
		String asm = ".data\n"+
					 ".align 8\n.globl "+label+"\n"+label+":\n";
		asm += "\t.quad "+i+"\n";
		asm += "\t.text\n";
		ArrayList<Assembly> x = new ArrayList<Assembly>();
		x.add(new OPER(asm, new TempRegister[]{}, null));
		return x;
	}
}
