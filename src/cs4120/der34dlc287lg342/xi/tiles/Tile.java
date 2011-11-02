package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.Register;

public class Tile {
	Register output;
	ArrayList<Tile> children;
	
	public Tile(Register output) {
		this.output = output;
		children = new ArrayList<Tile>();
	}
	
	public void addTile(Tile child) {
		children.add(child);
	}
	

}
