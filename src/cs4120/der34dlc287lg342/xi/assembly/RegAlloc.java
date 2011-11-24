package cs4120.der34dlc287lg342.xi.assembly;

import java.util.ArrayList;
import java.util.Hashtable;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class RegAlloc {
	public static String allocate(ArrayList<Assembly> instrs, Hashtable<TempRegister, Integer> coloring, String epilogue){
		String str = "";
		for (Assembly asm : instrs){
			// remove redundant case:
			if (asm instanceof MOVE && asm.machine_register(coloring, ((MOVE)asm).src).equals(asm.machine_register(coloring, ((MOVE)asm).dest)))
				continue;
			str += asm.simple_assem(coloring) + "\t\t# " + asm.simple_assem()+ "\n";
			if (asm instanceof RETURN){
				str += epilogue;
			}
			
		}
		return str;
	}
}
