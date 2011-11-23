package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.tiles.ConstTile;

public class Const extends Expr {
	public long value;
	public Const(long value){
		this.value = value;
	}
	
	@Override
	public Eseq lower(){
		return new Eseq(this, new Seq());
	}
	
	@Override
	public String label(){
		return ""+value;
	}
	
	@Override
	public ConstTile munch() {
		return new ConstTile(value);
	}
	
	@Override
	public boolean equals(Object that){
		if (that instanceof Const){
			return ((Const)that).value == value;
		}
		return false;
	}
}
