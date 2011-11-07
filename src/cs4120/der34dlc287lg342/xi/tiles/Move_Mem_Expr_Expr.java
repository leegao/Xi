package cs4120.der34dlc287lg342.xi.tiles;

public class Move_Mem_Expr_Expr extends Tile{
	Tile src;
	Tile dest;
	
	public Move_Mem_Expr_Expr(Tile src, Tile dest) {
		this.src = src;
		this.dest = dest;
	}
	
	public String att() {
		String asm = "";
		asm += this.dest.att();
		asm += this.src.att();
		asm += "movq ("+src.out+"), "+dest.out;
		return asm;
	}
}
