package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class Cjump extends Stmt {
	public Expr cond;
	public Label iftrue, iffalse;
	public Cjump(Expr cond, Label iftrue, Label iffalse){
		this.cond = cond;
		this.iftrue = iftrue;
		this.iffalse = iffalse;
	}
}
