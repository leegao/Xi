package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.RETURN;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class ReturnTile extends LabelNodeTile{

	public ReturnTile(Label name) {
		super(name);
	}

	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.add(new RETURN(name));
		return asm;
	}
}
