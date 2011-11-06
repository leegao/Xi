package cs4120.der34dlc287lg342.xi.tiles;

public class Move_Inc_Mem_Expr extends Tile {
	Tile expr;
	
	public Move_Inc_Mem_Expr(Tile expr) {
		this.expr = expr;
	}
	
	public String att() {
		String asm = "";
		if (expr instanceof ConstTile) {
			asm += "inc " + ((ConstTile)expr).value;
		} else {
			asm += "inc " + "(" + expr.out + ")";
		}
		
		return asm;
	}
}
