package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import cs4120.der34dlc287lg342.xi.tiles.TempTile;

public class Temp extends Expr {
	public TempRegister temp;
	public Temp(TempRegister temp){
		this.temp = temp;
	}
	
	@Override
	public Eseq lower(){
		return new Eseq(this, new Seq());
	}
	
	@Override
	public String label(){
		return ""+temp;
	}
	
	@Override
	public boolean equals(Object that){
		if (that instanceof Temp){
			return ((Temp)that).temp == temp;
		}
		return false;
	}

	@Override
	public TempTile munch() {
		return new TempTile(temp);
	}
	
}
