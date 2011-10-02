package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ListIndexNode extends ExpressionNode {

	protected Position position;
	protected AbstractSyntaxNode expr, index;
	protected ArrayList<VisualizableTreeNode> children;
	public ListIndexNode(AbstractSyntaxNode expr, AbstractSyntaxNode index, Position position){
		this.expr = expr;
		this.index = index;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(expr);
		children.add(index);
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
		return "ARR-INDEX";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		// typecheck id
		XiType expr_type = ((AbstractSyntaxTree)expr).typecheck(stack);
		if (!(expr_type instanceof XiPrimitiveType))
			throw new CompilationException("Cannot index into a non-primitive type",position());
		if (!((XiPrimitiveType)expr_type).isArrayType())
			throw new CompilationException("Cannot index into a non-array type",position());
		XiPrimitiveType t = (XiPrimitiveType)((XiPrimitiveType)expr_type).clone();
		t.dimension.remove(0);
		
		XiType index_type = ((AbstractSyntaxTree)index).typecheck(stack);
		if (!(index_type instanceof XiPrimitiveType))
			throw new CompilationException("Cannot use nonprimitive indices",position());
		if (!((XiPrimitiveType)index_type).equals(XiPrimitiveType.INT))
			throw new CompilationException("Cannot use noninteger indices",position());
		
		return t;
	}

}
