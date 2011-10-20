package cs4120.der34dlc287lg342.xi.ir;

public class Exp extends Stmt {
	public Expr expr;
	public Exp(Expr expr){
		super();
		this.expr = expr;
		children.add(expr);
	}
	
	@Override
	public Seq lower(){
		// System.out.println("i");
		Eseq eseq = expr.lower();
		Seq affects = (Seq) eseq.stmts;
		Seq seq = new Seq();
		add_and_lower(seq, affects);
		
		// if expr is a call
		if (expr instanceof Call){
			// replace the last stmt
			int i = seq.children.size()-1; // assumed to be nonzero
			Move mov = (Move) seq.children.get(i);
			seq.children.set(i, new Exp(mov.val));
		}
		
		return seq;
	}
}
