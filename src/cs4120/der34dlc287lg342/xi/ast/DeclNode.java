package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class DeclNode extends AbstractSyntaxTree {

	public Position position;
	public IdNode id;
	public String type_name;
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
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		try {
			stack.add_id(id.id, new XiPrimitiveType(type_name, brackets));
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), position());
		}
		
		int[] a = new int[3];
		int[] b = new int[5];
		a = b;
		
		type = XiPrimitiveType.UNIT;
		return type;
		
		
	}

}
