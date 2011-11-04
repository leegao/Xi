package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class Tile {
	TempRegister output;
	ArrayList<Tile> children;
	String name;
	
	public Tile(String name, TempRegister output) {
		this.name = name;
		this.output = output;
		children = new ArrayList<Tile>();
	}
	
	public void addTile(Tile child) {
		children.add(child);
	}
	

}
