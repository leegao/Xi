package cs4120.der34dlc287lg342.xi.ast;


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
public class AbstractSyntaxTree implements AbstractSyntaxNode {

	/**The type of this node*/
	public XiType type = null;
	
	@Override
	public Position position() {
		return null;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		return null;
	}

	@Override
	public String label() {
		return null;
	}
	/**Performs a type check on this node with the provided context stack.Type checking
	 * involves recursively type checking the children on this node. Before returning, the 
	 * type field of this node is also set. 
	 * @param stack 	A list of Contexts that contain the most up to date bindings.
	 * @return The type of this node. If the type check fails a CompilationException
	 * is thrown.*/
	public XiType typecheck(ContextList stack) throws CompilationException{
		return null;
	}

}
