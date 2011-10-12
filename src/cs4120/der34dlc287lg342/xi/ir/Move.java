package cs4120.der34dlc287lg342.xi.ir;

public class Move extends Stmt {
	public Expr dest, src;
	public Move(Expr dest, Expr src){
		super();
		this.dest = dest;
		this.src = src;
		children.add(dest);
		children.add(src);
	}
}
