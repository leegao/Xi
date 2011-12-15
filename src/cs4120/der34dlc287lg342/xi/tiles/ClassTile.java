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
	boolean need_init;
	int methods;
	
	public ClassTile(Label vt_label, Label size_label, ArrayList<String> vt, int size, boolean init, int methods) {
		this.vt_label = vt_label;
		this.size_label = size_label;
		this.vt = vt;
		this.size = size;
		this.need_init = init;
		this.methods = methods;
	}

	public ArrayList<Assembly> att(){
		if (!need_init){
			String asm = "#.section .rodata\n"+
					 ".align 8\n.globl "+size_label.name+"\n"+size_label.name+":\n";
			asm += "\t.quad "+size+"\n";
			//.globl _I_vt_Point
			//_I_vt_Point:
				//.quad 0
			asm += ".globl "+vt_label.name+"\n"+vt_label.name+":\n";
			asm += "\t.quad 0\n";
			for (String s : vt){
				asm += "\t.quad "+ s +"\n";
			}
			asm += ".text\n";
			
			ArrayList<Assembly> x = new ArrayList<Assembly>();
			x.add(new OPER(asm, new TempRegister[]{}, null));
			return x;
		} else {
			/*
			.bss
			.align 8
			.globl _I_size_ColoredPoint
			_I_size_ColoredPoint:
				.zero 8
			.globl _I_vt_ColoredPoint
			_I_vt_ColoredPoint:
				.zero 16
			 */
			String asm = ".bss\n.align 8\n.globl "+this.size_label.name+"\n"+this.size_label.name+":\n\t.zero 8\n";
			asm += ".globl "+this.vt_label.name+"\n"+this.vt_label.name+":\n\t.zero "+methods*8+"\n.text\n";
			ArrayList<Assembly> x = new ArrayList<Assembly>();
			x.add(new OPER(asm, new TempRegister[]{}, null));
			return x;
		}
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
