package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class ClassTile extends Tile {
	Label vt_label, size_label; 
	ArrayList<String> vt;
	int size;
	
	public ClassTile(Label vt_label, Label size_label, ArrayList<String> vt, int size) {
		this.vt_label = vt_label;
		this.size_label = size_label;
		this.vt = vt;
		this.size = size;
	}

//	public ArrayList<Assembly> att(){
//		String asm = "#.section .rodata\n"+
//					 ".align 8\n"+ro_entry+":\n";
//		asm += "\t.quad "+data.size()+"\n";
//		for (int i : data){
//			asm += "\t.quad "+i+"\n";
//		}
//		asm += "\t.text\n";
//		ArrayList<Assembly> x = new ArrayList<Assembly>();
//		x.add(new OPER(asm, new TempRegister[]{}, null));
//		return x;
//	}
}
