package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class ProcedureCallNode extends AbstractSyntaxTree {

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
		return "PROCEDURE";
	}

}
