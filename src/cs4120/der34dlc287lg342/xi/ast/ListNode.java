package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ListNode extends ExpressionNode {
	protected Position position;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public ListNode(Position position){
		this.position = position;
	}
	
	public void add(AbstractSyntaxNode expr){
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
		return "ARRAY(" + children.size() + ")";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		// case 1: * array of 0 elements
		if (children.isEmpty()){
			type = XiPrimitiveType.WILDCARD_ARR;
			return type;
		} else {
			// case 2: int/bool primitive 
			XiType t = null;
			for (VisualizableTreeNode child : children){
				AbstractSyntaxTree node = (AbstractSyntaxTree)child;
				XiType new_t = node.typecheck(stack);
				if (!(new_t instanceof XiPrimitiveType))
					throw new CompilationException("Lists must have primitive base types", position());
				if (t == null){
					t = new_t;
				} else {
					// check t = new_t
					if (!t.equals(new_t))
						throw new CompilationException("List construction expected type "+t+", but got "+new_t+" instead", position());
					if (((XiPrimitiveType)t).sameBaseType((XiPrimitiveType) XiPrimitiveType.WILDCARD_ARR)){
						t = new_t;
					}
				}
			}
			XiPrimitiveType base = XiPrimitiveType.array((XiPrimitiveType) t);
			
			type = base;
			return type;
		}
	}
}
