package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;
import java.util.List;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.tiles.DseqRoTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class Dseq_ro extends Stmt {
	Label ro_entry;
	ArrayList<Integer> data;
	
	public Dseq_ro(Label name, byte[] bytes){
		this.ro_entry = name;
		this.data = new ArrayList<Integer>();
		for (byte b : bytes)
			data.add((int)b);
	}
	
	@Override
	public Seq lower(){
		return new Seq(this);
	}
	
	@Override
	public Tile munch(){
		return new DseqRoTile(ro_entry, data);
	}
}
