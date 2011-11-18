package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.MOVE;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class BinopTile extends Tile{
	public Tile left, right;

	public BinopTile(Tile left, Tile right){
		this.left = left;
		this.right = right;
	}
	
	public ArrayList<Assembly> before(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.addAll(left.att());
		asm.addAll(right.att());
		out = new TempRegister();
		
		
		asm.add(Assembly.new_move(left.out, out));
		return asm;
	}
}
