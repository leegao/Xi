package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class FuncCallNode extends ExpressionNode {

	protected Position position;
	protected AbstractSyntaxNode id, args;
	protected ArrayList<VisualizableTreeNode> children;
	public FuncCallNode(IdNode id, CallArgsNode args, Position position){
		this.id = id;
		this.args = args;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(id);
		children.add(args);
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
		return id.label() + "("+args.label()+")";
	}

}
