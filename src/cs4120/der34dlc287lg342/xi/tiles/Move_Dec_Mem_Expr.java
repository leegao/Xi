package cs4120.der34dlc287lg342.xi.tiles;

public class Move_Dec_Mem_Expr extends Tile {
	Tile expr;
	
	public Move_Dec_Mem_Expr(Tile expr) {
		this.expr = expr;
	}
	
	public String att() {
		String asm = "";
		if (expr instanceof ConstTile) {
			asm += "dec " + ((ConstTile)expr).value;
		} else {
			asm += "dec " + "(" + expr.out + ")";
		} 
		
		return asm;
	}
}
