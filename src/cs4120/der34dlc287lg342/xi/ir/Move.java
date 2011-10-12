package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Register;

public class Move extends Stmt {
	public Expr dest, src;
	public Move(Expr dest, Expr src){
		super();
		this.dest = dest;
		this.src = src;
		children.add(dest);
		children.add(src);
	}
	
	@Override
	public Seq lower(){
		// Assume never commutes (not strictly true, will refactor later)
		Eseq rhs = src.lower();
		Eseq lhs = dest.lower();
		
		Seq s1 = (Seq) rhs.stmts, s2 = (Seq) lhs.stmts;
		Expr e = rhs.expr, d = lhs.expr;
		
		//Temp temp = new Temp(new Register());
		
		Seq seq = new Seq();
		add_and_lower(seq, s1);
		//seq.add(new Move(temp, e));
		add_and_lower(seq, s2);
		seq.add(new Move(d, e));
		//seq.add(new Move(d, new Mem(temp)));
		
		return new Seq(this);
	}
}
