package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.tiles.ExpTile;
import cs4120.der34dlc287lg342.xi.tiles.MemTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class Mem extends Expr {
	public Expr expr;
	public Mem(Expr expr){
		super();
		this.expr = expr;
		children.add(expr);
	}
	
	@Override
	public Eseq lower(){
		Eseq eseq = expr.lower();
		Seq seq = new Seq();
		Stmt.add_and_lower(seq, (Seq) eseq.stmts);
		return new Eseq(new Mem(eseq.expr), seq);
	}
	
	public String prettyPrint(){
		return "Mem("+expr.prettyPrint()+")";
	}
	
	@Override
	public Tile munch() {
		return new MemTile(expr.munch());
	}
}
