package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class Cjump extends Stmt {
	public Expr cond;
	public Label iftrue, iffalse;
	public Cjump(Expr cond, Label iftrue, Label iffalse){
		super();
		this.cond = cond;
		this.iftrue = iftrue;
		this.iffalse = iffalse;
		children.add(cond);
	}
	
	@Override
	public Seq lower(){
		Eseq eseq = cond.lower();
		Seq affects = (Seq) eseq.stmts;
		Seq seq = new Seq();
		add_and_lower(seq, affects);
		seq.add(new Cjump(eseq.expr, iftrue, iffalse));
		return seq;
	}
}
