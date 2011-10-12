package cs4120.der34dlc287lg342.xi.ir.translate;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.Register;

public abstract class IRTranslationCondition extends IRTranslation {

	@Override
	public
	abstract Stmt cond(Label t, Label f) throws InvalidIRContextException;

	@Override
	public
	Expr expr() throws InvalidIRContextException {
		Register r = new Register(); // fresh
		Label t = new Label(), f = new Label();
		Temp temp = new Temp(r);
		return new Eseq(temp, new Seq(
			new Move(temp, new Const(1)),
			cond(t, f),
			new LabelNode(f),
			new Move(temp, new Const(0)),
			new LabelNode(t)
		));
	}

	@Override
	public
	Stmt stmt() throws InvalidIRContextException {
		throw new InvalidIRContextException("Cannot translate condition into stmt");
	}

}
