package cs4120.der34dlc287lg342.xi.ir;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class Exp extends Stmt {
	public Expr expr;
	public Exp(Expr expr){
		super();
		this.expr = expr;
		children.add(expr);
	}
	
	@Override
	public Seq lower(){
		Eseq eseq = expr.lower();
		Seq affects = (Seq) eseq.stmts;
		Seq seq = new Seq();
		for (VisualizableTreeNode c : affects.children){
			Seq s = ((Stmt)c).lower();
			seq.children.addAll(s.children);
		}
		return seq;
	}
}
