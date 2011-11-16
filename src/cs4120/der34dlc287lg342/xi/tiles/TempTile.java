package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class TempTile extends Tile {
	public TempTile(TempRegister register) {
		this.out = register;
	}

	public ArrayList<Assembly> att(){
		return new ArrayList<Assembly>();
	}
}
