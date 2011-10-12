package cs4120.der34dlc287lg342.xi.ir;

public class Mem extends Expr {
	public Expr expr;
	public Mem(Expr expr){
		super();
		this.expr = expr;
		children.add(expr);
	}
}
