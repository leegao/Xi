package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;


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
		String asm = "";
		asm += this.dest.att();
		asm += this.src.att();
		asm += "movq ("+src.out+"), (" +dest.out+")";
		return null;
	}

}
