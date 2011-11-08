package cs4120.der34dlc287lg342.xi.tiles;

/**
 * Creating the assembly with the form:
 * 		movq expr, Mem(expr)
 *
 */
public class Move_Expr_Mem_Expr extends Tile {
	Tile src, dest;
	 
	public Move_Expr_Mem_Expr(Tile src, Tile dest) {
		this.src = src;
		this.dest = dest;
	}
	
	public String att() {
		String asm = "";
		asm += this.dest.att();
		asm += this.src.att();
		asm += "movq "+dest.out+", %r15\n";
		asm += "movq "+src.out+", %r14\n";
		asm += "movq %r14, (%r15)";
		return asm;
	}
	
}
