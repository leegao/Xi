package cs4120.der34dlc287lg342.xi.tiles;

public class MoveTile extends Tile {
	public Tile dest, src;

	public MoveTile(Tile src, Tile dest) {
		this.dest = dest;
		this.src = src;
	}
	
	public String att(){
		String asm = "";
		asm += this.dest.att();
		if (!(this.src instanceof ConstTile))
			asm += this.src.att();
		
		asm += "movq "+src.out()+", %r15\n";
		asm += "movq %r15, "+dest.out;
		return asm;
	}
}
