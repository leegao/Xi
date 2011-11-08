package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class DseqRoTile extends Tile {
	Label ro_entry;
	ArrayList<Integer> data;
	public DseqRoTile(Label ro_entry, ArrayList<Integer> data) {
		this.ro_entry = ro_entry;
		this.data = data;
	}

	public String att(){
		String asm = ".section .rodata\n"+
					 ".align 8\n"+ro_entry+":\n";
		asm += "\t.quad "+data.size()+"\n";
		for (int i : data){
			asm += "\t.quad "+i+"\n";
		}
		asm += "\t.text\n";
		return asm;
	}
}
