package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class IdNode extends ExpressionNode {

	protected Position position;
	public String id;
	
	public IdNode(String id, Position position){
		this.id = id;
		this.position = position;
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		return new ArrayList<VisualizableTreeNode>();
	}

	@Override
	public String label() {
		return "ID("+id+")";
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		try {
			XiType t = stack.find_id(id);
			type = t;
			return type;
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), position());
		}
	}
}
