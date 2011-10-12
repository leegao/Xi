package cs4120.der34dlc287lg342.xi.ir;

public class Return extends Stmt {
	@Override
	public Seq lower(){
		return new Seq(this);
	}
}
