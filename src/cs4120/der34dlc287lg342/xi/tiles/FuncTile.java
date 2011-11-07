package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class FuncTile extends SeqTile {
	Label name;
	public FuncTile(Label name){
		super();
		this.name = name;
	}
	
	public String prologue(){
		return "";
	}
	
	public String epilogue(){
		return "";
	}
	
	public String att(){
		String asm = prologue();
		for (Tile tile : tiles){
			System.out.println(tile);
			asm += tile.att()+"\n";
		}
		asm += epilogue();
		return asm;
	}
}
