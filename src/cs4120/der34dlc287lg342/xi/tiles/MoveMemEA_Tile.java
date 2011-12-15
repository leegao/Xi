package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class MoveMemEA_Tile extends Tile {
	Tile expr;
	Tile val;
	public MoveMemEA_Tile(Tile expr, Tile val) {
		this.expr = expr;
		this.val = val;
	}

	public ArrayList<Assembly> att() {
		// movq src, (dest)
		
		//System.out.println("FFFFF");
		
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.addAll(expr.att());
		asm.addAll(val.att());
		asm.add(new OPER("movq %s0, (%s1)", new TempRegister[]{val.out, expr.out}, null));
		
//		String asm = "";
//		asm += this.dest.att();
//		asm += this.src.att();
//		asm += "movq ("+src.out+"), (" +dest.out+")";
		return asm;
	}
}
