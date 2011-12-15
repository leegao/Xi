package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;
import java.util.HashMap;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.tiles.ClassTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class Class extends Stmt {
	public Label vt_label, size_label;
	public ArrayList<String> vt;
	public HashMap<String, Integer> hash = new HashMap<String, Integer>();
	public int size;
	public boolean need_init = false;
	public Class(String string) {
		vt_label = new Label("_I_vt_"+string);
		size_label = new Label("_I_size_"+string);
		vt = new ArrayList<String>();
	}

	public void add(String mangle, int i) {
		vt.add(mangle);
		hash.put(mangle, i);
	}

	@Override
	public Tile munch() {
		//System.out.println("Class:munch not implemented yet");
		ClassTile tile = new ClassTile(vt_label, size_label, vt, size);
		return tile;
	}
	
}
