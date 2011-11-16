package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.LABEL;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class LabelNodeTile extends Tile{
	public Label name;
	public LabelNodeTile(Label name){
		this.name = name;
	}
	
	public ArrayList<Assembly> att(){
		
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.add(new LABEL(name));
		return asm;
	}
}
