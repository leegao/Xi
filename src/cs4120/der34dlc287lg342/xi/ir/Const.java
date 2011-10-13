package cs4120.der34dlc287lg342.xi.ir;

public class Const extends Expr {
	public int value;
	public Const(int value){
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
}
