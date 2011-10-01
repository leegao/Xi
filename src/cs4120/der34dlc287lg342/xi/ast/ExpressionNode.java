package cs4120.der34dlc287lg342.xi.ast;

import java.util.List;

import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypeContext;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public abstract class ExpressionNode extends AbstractSyntaxTree {

	public XiType type = null;
	
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
	public String label() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public XiType typecheck(List<XiTypeContext> stack) throws CompilationException{
		return type;
	}

}
