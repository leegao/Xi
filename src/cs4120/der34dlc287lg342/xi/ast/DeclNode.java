package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;
/**Represents a variable declaration in the AST*/
public class DeclNode extends AbstractSyntaxTree {

	public Position position;
	/**The id of this variable declaration.*/
	public IdNode id;
	/**The base type of this variable declaration*/
	public String type_name;
	/**If this represents an array declaration than this field contains any dimension
	 * specifiers.*/
	public ArrayList<VisualizableTreeNode> brackets;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public DeclNode(IdNode id, String type, ArrayList<VisualizableTreeNode> brackets, Position position){
		this.id = id;
		this.type_name = type;
		this.brackets = brackets;
		this.position = position;
		children.add(id);
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
		return "DECL";
	}
	
	/** This node represents a declaration with no assignment so it
	 * always type checks as unit.
	 */
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		try {
			XiType t = new XiPrimitiveType(type_name, brackets);
			stack.add_id(id.id, t);
			if (! t.equals(((AbstractSyntaxTree)id).typecheck(stack)))
				throw new CompilationException("Cannot match the type of the object to the declared type", position());
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), position());
		}
		
		type = XiPrimitiveType.UNIT;
		return type;
		
		
	}

}
