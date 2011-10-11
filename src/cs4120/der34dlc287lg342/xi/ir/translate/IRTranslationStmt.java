package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class IRTranslationStmt extends IRTranslation {

	protected Stmt stmt;
	public IRTranslationStmt(Stmt stmt) {
		this.stmt = stmt;
	}

	@Override
	Stmt cond(Label t, Label f) {
		return null;
	}

	@Override
	Expr expr() {
		return null;
	}

	@Override
	Stmt stmt() {
		return stmt;
	}

}
