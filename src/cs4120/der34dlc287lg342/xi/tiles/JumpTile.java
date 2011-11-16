package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class JumpTile extends Tile {
	public Label label;
	
	public JumpTile(Label label) {
		this.label = label;
	}
	
	public ArrayList<Assembly> att(){
		return "jmp "+label;
	}
}
