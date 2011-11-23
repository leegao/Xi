package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class DseqRoTile extends Tile {
	Label ro_entry;
	ArrayList<Integer> data;
	public DseqRoTile(Label ro_entry, ArrayList<Integer> data) {
		this.ro_entry = ro_entry;
		this.data = data;
	}

	public ArrayList<Assembly> att(){
		String asm = "#.section .rodata\n"+
					 ".align 8\n"+ro_entry+":\n";
		asm += "\t.quad "+data.size()+"\n";
		for (int i : data){
			asm += "\t.quad "+i+"\n";
		}
		asm += "\t.text\n";
		ArrayList<Assembly> x = new ArrayList<Assembly>();
		x.add(new OPER(asm, new TempRegister[]{}, null));
		return x;
	}
}
