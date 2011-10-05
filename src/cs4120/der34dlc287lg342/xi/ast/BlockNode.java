package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypeContext;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class BlockNode extends AbstractSyntaxTree {

	public Position position;
	/**All the chidren nodes of this block, mainly statement nodes. */
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public XiTypeContext new_context = null;
	
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
	
	/** This function type checks a block by confirming that each
	 * statement in the block returns a type unit or void.*/
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		// do push a new context
		// we use deferred context push system since naked {} are allowed
		
		if (new_context == null)
			new_context = new XiTypeContext(false);
		stack.push(new_context);
		
		XiType t = XiPrimitiveType.UNIT;
		
		for (VisualizableTreeNode child : children){
			AbstractSyntaxTree node = (AbstractSyntaxTree)child;
			XiType child_type = node.typecheck(stack);
			if (!XiPrimitiveType.UNIT.equals(child_type) && 
				!(XiPrimitiveType.VOID.equals(child_type)))
				throw new CompilationException("Statement expected but got an expression instead in block", position());
			if (XiPrimitiveType.VOID.equals(child_type))
				t = XiPrimitiveType.VOID;
			
			// unreachable code
			if (XiPrimitiveType.UNIT.equals(child_type) && XiPrimitiveType.VOID.equals(t))
				throw new CompilationException("Unreachable code", position());
		}
		
		type = t; // do not annotate if fails
		
		// For PA3 only, print out symbol table
		if (AbstractSyntaxTree.PA3){
			System.out.println("Leaving block with stack");
			for (int i = stack.size()-1; i >= 0; i--)
				System.out.println("  "+i+": "+stack.get(i).symbols);
			System.out.println();
		}
		
		try {
			stack.pop(); // we want to use this later for the local variable stack allocation
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), position());
		}
		
		return type;
	}

}
