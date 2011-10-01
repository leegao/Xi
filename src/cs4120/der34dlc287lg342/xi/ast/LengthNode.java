package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class LengthNode extends ExpressionNode {

	protected Position position;
	protected AbstractSyntaxNode args;
	protected ArrayList<VisualizableTreeNode> children;
	public LengthNode(AbstractSyntaxNode args, Position position){
		this.args = args;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(args);
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		return children;
	}

	@Override
	public String label() {
		return "LENGTH";
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		XiPrimitiveType t = (XiPrimitiveType)((AbstractSyntaxTree)args).typecheck(stack);
		if (t.isArrayType())
			return XiPrimitiveType.INT;
		else
			throw new CompilationException("Cannot apply length to non-array types", position());
	}
}
