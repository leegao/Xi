package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class BlockNode extends AbstractSyntaxTree {

	public Position position;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public BlockNode(Position position){
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
		return "BLOCK";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		// do not push new context
		
		for (VisualizableTreeNode child : children){
			AbstractSyntaxTree node = (AbstractSyntaxTree)child;
			XiType child_type = node.typecheck(stack);
			if (!XiPrimitiveType.UNIT.equals(child_type))
				throw new CompilationException("Statement expected but got an expression instead in block", position());
		}
		
		return XiPrimitiveType.UNIT;
	}

}
