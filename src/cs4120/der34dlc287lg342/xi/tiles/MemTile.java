package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class MemTile extends Tile {
	Tile tile;
	
	public MemTile(Tile tile) {
		this.tile = tile;
	}

	@Override
	public String att(){
		String asm = "";
		if (!(tile instanceof ConstTile)){
			asm += tile.att();
		}
		out = new TempRegister();
		asm += "movq "+out()+", %r15\n";
		asm += "movq %r15, "+out+"\n";
		return asm;
	}
	
//	@Override
//	public String att(){
//		String asm = "";
//		if (!(tile instanceof ConstTile)){
//			Tile mult = tile.is_add_mult();
//			if (mult != null){
//				asm += mult.generate_att();
//			} else {
//				Tile add = tile.is_add_mult();
//				if (add != null){
//					asm += add.generate_att();
//				} else {
//					asm += tile.att();
//				}
//			}
//		}
//		out = new TempRegister();
//		asm += "movq "+out()+", "+out+"\n";
//		return asm;
//	}
//	
//	public String out(){
//		if (tile.is_add_mult() != null){
//			return tile.add_mult();
//		} else if (tile.is_add() != null){
//			return tile.add();
//		} else {
//			return "("+tile.out+")";
//		}
//	}
//	
//	public String generate_att(){
//		String asm = "";
//		if (!(tile instanceof ConstTile)){
//			Tile mult = tile.is_add_mult();
//			if (mult != null){
//				asm += mult.generate_att();
//			} else {
//				Tile add = tile.is_add_mult();
//				if (add != null){
//					asm += add.generate_att();
//				} else {
//					asm += tile.att();
//				}
//			}
//		}
//		return asm;
//	}
}
