package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class BreakNode extends AbstractSyntaxTree {

	protected Position position;
	public BreakNode(Position position){
		this.position = position;
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		// EMPTY
		return new ArrayList<VisualizableTreeNode>();
	}

	@Override
	public String label() {
		return "BREAK";
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		boolean breakable;
		try {
			breakable = stack.breakable();
		}catch (InvalidXiTypeException ex) {
			throw new CompilationException(ex.getMessage(),position);
		}
		
		if (!breakable){
			throw new CompilationException("Cannot break if not in a loop", position);
		}
		
		type = XiPrimitiveType.UNIT;
		return type;
	}
}
