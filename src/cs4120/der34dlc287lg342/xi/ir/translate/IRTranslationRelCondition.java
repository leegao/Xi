package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class IRTranslationRelCondition extends IRTranslationCondition {
	Expr e;
	public IRTranslationRelCondition(Expr e){
		this.e = e;
	}
	
	@Override
	public
	Stmt cond(Label t, Label f) {
		return new Cjump(e, t, f);
	}
}
