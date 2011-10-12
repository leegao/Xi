package cs4120.der34dlc287lg342.xi.ir;

import java.util.List;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

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
	
	@Override
	public Seq lower(){
		Seq seq = new Seq();
		for (VisualizableTreeNode c : this.children){
			Seq s = ((Stmt)c).lower();
			seq.children.addAll(s.children);
		}
		return seq;
	}
}