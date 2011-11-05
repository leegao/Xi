package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class CallTile extends Tile{
	public Label name;
	public ArrayList<Tile> args;
	public CallTile(Label name){
		this.name = name;
		args = new ArrayList<Tile>();
	}
	
	public void add(Tile tile){
		args.add(tile);
	}
}
