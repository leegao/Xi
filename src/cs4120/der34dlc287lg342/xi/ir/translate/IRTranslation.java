package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public abstract class IRTranslation {
	public abstract Expr expr() throws InvalidIRContextException;
	public abstract Stmt stmt() throws InvalidIRContextException;
	public abstract Stmt cond(Label t, Label f) throws InvalidIRContextException;
}
