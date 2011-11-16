package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class CallTile extends Tile{
	public Label name;
	public ArrayList<Tile> args;
	public TempRegister tuple;
	public static String[] registers = {"", ""};
	public CallTile(Label name){
		this.name = name;
		args = new ArrayList<Tile>();
		tuple = null;
	}
	
	public void add(Tile tile){
		args.add(tile);
	}
	
//	public ArrayList<Assembly> att(){
//		String asm = "";
//		int i = 0;
//		if (tuple != null){
//			asm += "movq " + tuple + ", %rdi\n";
//			
//			i++;
//		}
//		for (Tile arg : args){
//			asm += arg.att();
//			if (i < 6){
//				if (name == Label.internal_strdup)
//					asm += "leaq "+ arg + ", %"+TempRegister.free_registers[i++].name+"\n";
//				else
//					asm += "movq "+ arg.out+", %"+TempRegister.free_registers[i++].name+"\n";
//			} else {
//				asm += "pushq "+arg.out+"\n";
//			}
//		}
//		asm += "call "+name+"\n";
//		if (args.size() > 6)
//			for (int j = 0; j < args.size()-6; j++)
//				asm += "popq %r15\n";
//		out = TempRegister.RV;
//		return asm;
//	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		int i = 0;
		if (tuple != null){
			//asm += "movq " + tuple + ", %rdi\n";
			asm.add(new OPER("movq %s0, %rdi", tuple, null));
			i++;
		}
		for (Tile arg : args){
			asm.addAll(arg.att());
			
			if (i < 6){
				if (name == Label.internal_strdup)
					//asm += "leaq "+ arg + ", %"+TempRegister.free_registers[i++].name+"\n";
					asm.add(new OPER("leaq %s0, %"+TempRegister.free_registers[i++].name, arg.out, null));
				else
					//asm += "movq "+ arg.out+", %"+TempRegister.free_registers[i++].name+"\n";
					asm.add(new OPER("movq %s0, %"+TempRegister.free_registers[i++].name, arg.out, null));
			} else {
				//asm += "pushq "+arg.out+"\n";
				asm.add(new OPER("pushq %s0", arg.out, null));
			}
		}
		asm.add(new OPER("call "+name, new TempRegister[]{}, null));
		if (args.size() > 6)
			for (int j = 0; j < args.size()-6; j++)
				//asm += "popq %rdx\n";
				asm.add(new OPER("popq %rdx", new TempRegister[]{}, null));
		out = TempRegister.RV;
		return asm;
	}
}
