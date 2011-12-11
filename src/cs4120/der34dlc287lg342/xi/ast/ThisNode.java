package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ThisNode extends ExpressionNode {
	public Position position;
	public ThisNode(Position pos){
		this.position = pos;
	}
	@Override
	public Position position() {
		// TODO Auto-generated method stub
		return position;
	}
	@Override
	public Iterable<VisualizableTreeNode> children() {
		// TODO Auto-generated method stub
		return new ArrayList<VisualizableTreeNode>();
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		
		throw new CompilationException("Unimplemented yet: this.typecheck", position);
	}
}
