package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class IRTranslationStmt extends IRTranslation {

	protected Stmt stmt;
	public IRTranslationStmt(Stmt stmt) {
		this.stmt = stmt;
	}

	@Override
	public
	Stmt cond(Label t, Label f) throws InvalidIRContextException {
		throw new InvalidIRContextException("Cannot translate stmt to cond");
	}

	@Override
	public
	Expr expr() throws InvalidIRContextException {
		throw new InvalidIRContextException("Cannot translate stmt to expr");
	}

	@Override
	public
	Stmt stmt() {
		return stmt;
	}

}
