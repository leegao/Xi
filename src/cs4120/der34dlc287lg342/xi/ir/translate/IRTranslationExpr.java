package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class IRTranslationExpr extends IRTranslation {

	protected Expr expr;
	public IRTranslationExpr(Expr expr) {
		this.expr = expr;
	}

	@Override
	public
	Stmt cond(Label t, Label f) {
		return null;
	}

	@Override
	public
	Expr expr() {
		return expr;
	}

	@Override
	public
	Stmt stmt() {
		return new Exp(expr());
	}

}
