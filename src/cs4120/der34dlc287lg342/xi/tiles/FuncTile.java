package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class FuncTile extends SeqTile {
	public Label name;
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
			asm += tile.att()+"\n";
		}
		asm += epilogue();
		return asm;
	}
}
