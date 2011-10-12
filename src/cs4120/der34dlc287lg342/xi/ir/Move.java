package cs4120.der34dlc287lg342.xi.ir;

public class Move extends Stmt {
	public Expr dest, src;
	boolean primitive;
	public Move(Expr dest, Expr src, boolean primitive){
		super();
		this.dest = dest;
		this.src = src;
		this.primitive = primitive;
		children.add(dest);
		children.add(src);
	}
	
	public Move(Expr dest, Expr src){
		this(dest, src, false);
	}
	
	@Override
	public Seq lower(){
		if (primitive)
			return new Seq(this);
		
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
		
		return seq;
	}
}
