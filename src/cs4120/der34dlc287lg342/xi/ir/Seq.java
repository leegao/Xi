package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;
import java.util.List;

public class Seq extends Stmt {
	public ArrayList<Stmt> stmts;
	
	public Seq(Stmt... seq){
		super();
		stmts = new ArrayList<Stmt>();
		for (Stmt e : seq)
			stmts.add(e);
		children.addAll(stmts);
	}
	
	public Seq(List<Stmt> seq){
		this.stmts.addAll(seq);
	}
	
	public void add(Stmt stmt){
		stmts.add(stmt);
		children.add(stmt);
	}
}