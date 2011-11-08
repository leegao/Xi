package cs4120.der34dlc287lg342.xi.tiles;

public class MoveTile extends Tile {
	public Tile dest, src;

	public MoveTile(Tile src, Tile dest) {
		this.dest = dest;
		this.src = src;
	}
	
	public String att(){
		String asm = "";
		String out;
		if (!(dest instanceof MemTile)){
			asm += this.dest.att();
			out = dest.out + "";
		} else {
			MemTile mem = (MemTile)dest;
			asm += mem.tile.att();
			asm += "movq "+mem.tile.out()+", %r14\n";
			out = "(%r14)";
		}
		
		if (!(this.src instanceof ConstTile))
			asm += this.src.att();
		
		asm += "movq "+src.out()+", %r15\n";
		asm += "movq %r15, "+out;
		return asm;
	}
}
