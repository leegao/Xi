package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class ListIndexNode extends ExpressionNode {

	protected Position position;
	protected AbstractSyntaxNode id, index;
	protected ArrayList<VisualizableTreeNode> children;
	public ListIndexNode(IdNode id, AbstractSyntaxNode index, Position position){
		this.id = id;
		this.index = index;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(id);
		children.add(index);
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
		return "ARR-INDEX";
	}

}
