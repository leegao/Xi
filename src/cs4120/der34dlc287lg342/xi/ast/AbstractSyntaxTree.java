package cs4120.der34dlc287lg342.xi.ast;


import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.typechecker.*;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

/**Represents a node in the AST that is generated from the parser. 
 * This class extends AbstractSyntaxNode so we can use the course
 * provided tree printer. This node facilitates type checking 
 * by associating a type with the node and having a type cheking 
 * function.*/
public abstract class AbstractSyntaxTree implements AbstractSyntaxNode {

	/**The type of this node*/
	public XiType type = null;
	public static boolean PA3 = false;
	
	@Override
	public String label() {
		// TODO Auto-generated method stub
		return this.getClass().getSimpleName();
	}
	
	@Override
	public String toString(){
		return label() + ((type != null) ? "["+type+"]" : "");
	}
	
	/**Performs a type check on this node with the provided context stack.Type checking
	 * involves recursively type checking the children on this node. Before returning, the 
	 * type field of this node is also set. 
	 * @param stack 	A list of Contexts that contain the most up to date bindings.
	 * @return The type of this node. If the type check fails a CompilationException
	 * is thrown.*/
	public abstract XiType typecheck(ContextList stack) throws CompilationException;

	// return null if not actually constant folding, return ast if expression can be folded
	public AbstractSyntaxTree foldConstants(){
		for (VisualizableTreeNode child : children()){
			if (child instanceof AbstractSyntaxTree){
				AbstractSyntaxTree node = (AbstractSyntaxTree)child;
				AbstractSyntaxTree folded = node.foldConstants();
				if (folded != null){
					// do something
					System.out.println("Constant folding " + node + " to " + folded);
				}
			}
		}
		return null;
	}
	
	protected AbstractSyntaxTree resolve_const(int i, AbstractSyntaxTree n, AbstractSyntaxNode c){
		if (n != null){
			set_const(i,n);
			return n;
		}
		return (AbstractSyntaxTree) c;
	}
	
	protected void set_const(int i, AbstractSyntaxTree n){
		if (n != null){
			ArrayList<VisualizableTreeNode> children = ((ArrayList<VisualizableTreeNode>)children());
			children.set(i, n);
		}
	}
	
	public IRTranslation to_ir(IRContextStack stack)  throws InvalidIRContextException{
		return null;
	}
}
