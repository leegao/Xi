package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public abstract class IRTranslation {
	public abstract Expr expr();
	public abstract Stmt stmt();
	public abstract Stmt cond(Label t, Label f);
}
