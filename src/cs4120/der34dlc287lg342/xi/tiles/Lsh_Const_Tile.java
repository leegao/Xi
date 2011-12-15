package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class Lsh_Const_Tile extends BinopTile{
	public Tile other;
	long value;
	public Lsh_Const_Tile(long value, Tile other){
		super(null, null);
		this.value = value;
		this.other = other;
	}
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.addAll(other.att());

		asm.add(new OPER("salq $"+value+", %d0", new TempRegister[]{other.out}, other.out));
		
		return asm;
	}
}
