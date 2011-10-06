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
		
		type = t;
		return t;
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		// only if lhs is a listnode and rhs is an integer
		AbstractSyntaxTree lhs = ((AbstractSyntaxTree)expr).foldConstants();
		expr = resolve_const(0,lhs,expr);
		AbstractSyntaxTree rhs = ((AbstractSyntaxTree)index).foldConstants();
		index = resolve_const(1,rhs,index);
		
		if (expr instanceof ListNode && index instanceof IntegerLiteralNode){
			// return the i-th object from list
			ListNode list = (ListNode)expr;
			int i = ((IntegerLiteralNode)index).value;
			if (i >= list.children.size()) return null;
			AbstractSyntaxTree tree = (AbstractSyntaxTree)list.children.get(i);
			assert(tree.type == type);
			return tree;
		}
		return null;
	}

}
