package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
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

}
