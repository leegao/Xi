package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.tiles.Tile;

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
	
	@Override
	public Eseq lower(){
		Eseq eseq = expr.lower();
		Seq seq = new Seq();
		Stmt.add_and_lower(seq, (Seq) eseq.stmts);
		Stmt.add_and_lower(seq, (Seq) stmts);
		return new Eseq(eseq.expr, seq);
	}

	@Override
	public Tile munch() {
		// TODO Auto-generated method stub
		return null;
	}
}
