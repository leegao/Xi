package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;


/**
 * Creating the assembly with the form:
 * 		movq Mem(expr), Mem(expr)
 *
 */
public class Move_Mem_Expr_Mem_Expr extends Tile{
	
	Tile src, dest;
	
	public Move_Mem_Expr_Mem_Expr(Tile src, Tile dest) {
		this.src = src;
		this.dest = dest;
	}
	
	public ArrayList<Assembly> att() {
		// movq src, (dest)
		
		//System.out.println("FFFFF");
		
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.addAll(dest.att());
		asm.addAll(src.att());
		asm.add(new OPER("movq %s0, (%s1)", new TempRegister[]{src.out, dest.out}, null));
		
//		String asm = "";
//		asm += this.dest.att();
//		asm += this.src.att();
//		asm += "movq ("+src.out+"), (" +dest.out+")";
		return asm;
	}

}
