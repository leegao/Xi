package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class ProcedureCallNode implements AbstractSyntaxNode {

	protected AbstractSyntaxNode call;
	public ProcedureCallNode(AbstractSyntaxNode call){
		this.call = call;
	}
	
	@Override
	public Position position() {
		return call.position();
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
		children.add(call);
		return children;
	}

	@Override
	public String label() {
		return call.label();
	}

}
