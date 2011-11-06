package cs4120.der34dlc287lg342.xi.tiles;


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
}
