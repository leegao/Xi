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
	
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		for (Tile tile : tiles){
			asm.addAll(tile.att());
		}
		return asm;
	}
}
