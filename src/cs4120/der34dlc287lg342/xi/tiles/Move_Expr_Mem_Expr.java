package cs4120.der34dlc287lg342.xi.tiles;

/**
 * Creating the assembly with the form:
 * 		movq expr, Mem(expr)
 *
 */
public class Move_Expr_Mem_Expr extends Tile {
	Tile value;
	Tile expr; 
	 
	public Move_Expr_Mem_Expr(Tile value, Tile expr) {
		this.value = value;
		this.expr = expr;
	}
	
}
