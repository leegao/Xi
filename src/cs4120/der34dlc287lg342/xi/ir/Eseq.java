package cs4120.der34dlc287lg342.xi.ir;

public class Eseq extends Expr {
	public Stmt stmts;
	public Expr expr;
	
	public Eseq(Expr expr, Stmt seq){
		super();
		this.expr = expr;
		this.stmts = seq;
		children.add(seq);
		children.add(expr);
	}
}
