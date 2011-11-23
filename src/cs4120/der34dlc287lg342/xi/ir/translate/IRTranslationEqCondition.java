package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class IRTranslationEqCondition extends IRTranslationCondition {

	Expr expr;
	public IRTranslationEqCondition(Expr expr){
		this.expr = expr;
	}
	
	@Override
	public Stmt cond(Label t, Label f) throws InvalidIRContextException {
		// TODO Auto-generated method stub
		return new Cjump(expr, t,f);
	}

}
