package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

public class SeqTile extends Tile {
	public ArrayList<Tile> tiles;
	public SeqTile(){
		tiles = new ArrayList<Tile>();
	}
	
	public void add(Tile tile){
		tiles.add(tile);
	}
	
	public String toString(){
		String s = "";
		for (Tile t : tiles){
			s += t + "\n";
		}
		return s;
	}
}
