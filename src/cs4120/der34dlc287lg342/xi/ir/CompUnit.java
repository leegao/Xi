package cs4120.der34dlc287lg342.xi.ir;

public class CompUnit extends Stmt {
	Seq seq;
	public CompUnit(Stmt... stmts){
		super();
		seq = new Seq();
		children.add(seq);
		for (Stmt s : stmts)
			add(s);
	}
	
	public void add(Stmt stmt){
		if (stmt instanceof Func)
			children.add(stmt);
		else if (stmt instanceof Seq)
			seq.addAll(seq);
	}
}
