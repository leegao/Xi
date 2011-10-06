package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class AssignmentNode extends AbstractSyntaxTree {

	protected Position position;
	protected AbstractSyntaxNode id, expr;
	protected ArrayList<VisualizableTreeNode> children;
	public AssignmentNode(ExpressionNode index, AbstractSyntaxNode expr, Position position){
		this.id = index;
		this.expr = expr;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(index);
		children.add(expr);
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
		return "ASSIGNMENT";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		// push a new context frame onto the stack
		XiType idType = ((AbstractSyntaxTree)id).typecheck(stack);
		XiType exprType = ((AbstractSyntaxTree)expr).typecheck(stack);
		
		if( idType.equals(exprType)) {
			type = XiPrimitiveType.UNIT;
			return type;
		} else {
			throw new CompilationException("Invalid assignment type",position);
		
		}
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		// lhs CANNOT be a constant
		((AbstractSyntaxTree)id).foldConstants();
		// rhs can be a constant
		AbstractSyntaxTree rhs = ((AbstractSyntaxTree)expr).foldConstants();
		expr = resolve_const(1,rhs,expr);
		
		return null;
	}
}
