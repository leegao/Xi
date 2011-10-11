package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class IRTranslationExpr extends IRTranslation {

	protected Expr expr;
	public IRTranslationExpr(Expr expr) {
		this.expr = expr;
	}

	@Override
	Stmt cond(Label t, Label f) {
		return null;
	}

	@Override
	Expr expr() {
		return expr;
	}

	@Override
	Stmt stmt() {
		return new Exp(expr());
	}

}
