package cs4120.der34dlc287lg342.xi.ast;

import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ContinueNode extends AbstractSyntaxTree{

	@Override
	public Position position() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack)
			throws InvalidIRContextException {
		// TODO Auto-generated method stub
		return null;
	}

}
