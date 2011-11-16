package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;


/**
 * Creating the assembly with the form:
 * 		movq k(%r), expr
 *
 */
public class Move_Mem_Add_Const_Expr_Expr extends Tile{
	Tile dest, src;
	long value;
	
	public Move_Mem_Add_Const_Expr_Expr(long value, Tile src, Tile dest) {
		this.dest = dest;
		this.value = value;
		this.src = src;
	}
	
	public ArrayList<Assembly> att(){
		//movq k(%r), %r
		// shuttle
		String asm = src.att();
		asm += dest.att();
		asm += "movq "+src.out+", %r15\n";
		asm += "movq "+value+"(%r15), "+"%r15\n";
		asm += "movq %r15, "+dest.out();
		return asm;
	}
}
