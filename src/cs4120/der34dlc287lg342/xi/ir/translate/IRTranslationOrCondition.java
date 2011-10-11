package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class IRTranslationOrCondition extends IRTranslationCondition {

	Binop e;
	public IRTranslationOrCondition(Binop e){
		this.e = e;
	}
	
	@Override
	public
	Stmt cond(Label t, Label f) {
		Label a = new Label();
		IRTranslationExpr left = new IRTranslationExpr(e.left), right = new IRTranslationExpr(e.right);
		return new Seq(
			left.cond(t, a),
			new LabelNode(a),
			right.cond(t, f)
		);
	}

}
