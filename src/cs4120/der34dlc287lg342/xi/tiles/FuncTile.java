package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
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
	
	public ArrayList<Assembly> att(){
		String asm = prologue();
		for (Tile tile : tiles){
			asm += tile.att()+"\n";
		}
		asm += epilogue();
		return asm;
	}
}
