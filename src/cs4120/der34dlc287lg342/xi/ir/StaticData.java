package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.tiles.StaticDataTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class StaticData extends Stmt {
	String label;
	long i;
	
	public StaticData(String string, long i){
		label = string;
		this.i = i;
	}
	
	@Override
	public Tile munch() {
		return new StaticDataTile(label, i);
	}

}
