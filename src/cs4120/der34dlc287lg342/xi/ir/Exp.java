package cs4120.der34dlc287lg342.xi.ir;

public class Exp extends Stmt {
	public Expr expr;
	public Exp(Expr expr){
		super();
		this.expr = expr;
		children.add(expr);
	}
}
