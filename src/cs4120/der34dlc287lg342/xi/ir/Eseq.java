package cs4120.der34dlc287lg342.xi.ir;

public class Eseq extends Expr {
	public Stmt stmts;
	public Expr expr;
	
	public Eseq(Expr expr, Stmt seq){
		this.expr = expr;
		this.stmts = seq;
	}
}
