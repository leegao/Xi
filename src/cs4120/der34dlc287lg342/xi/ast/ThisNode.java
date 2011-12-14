package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationExpr;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ThisNode extends ExpressionNode {
	public Position position;
	public ThisNode(Position pos){
		this.position = pos;
	}
	@Override
	public Position position() {
		// TODO Auto-generated method stub
		return position;
	}
	@Override
	public Iterable<VisualizableTreeNode> children() {
		// TODO Auto-generated method stub
		return new ArrayList<VisualizableTreeNode>();
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		if (!stack.in_class)
			throw new CompilationException("Cannot refer to this outside of an instance method.", position);
		type = stack.top.classes.get(stack.klass.id.id);
		return type;
		//throw new CompilationException("Unimplemented yet: this.typecheck", position);
	}
	@Override
	public IRTranslation to_ir(IRContextStack stack)
			throws InvalidIRContextException {
		return new IRTranslationExpr(stack.find_register("this"));
		//throw new InvalidIRContextException("Unimplemented: this");
	}
}
