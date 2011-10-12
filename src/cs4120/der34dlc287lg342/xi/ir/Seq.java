package cs4120.der34dlc287lg342.xi.ir;

import java.util.List;

public class Seq extends Stmt {
	
	public Seq(Stmt... seq){
		super();
		for (Stmt e : seq)
			children.add(e);
	}
	
	public Seq(List<Stmt> seq){
		children.addAll(seq);
	}
	
	public void add(Stmt stmt){
		children.add(stmt);
	}
}