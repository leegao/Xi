package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class IfNode implements AbstractSyntaxNode {

	protected Position position;
	protected AbstractSyntaxNode condition, s1, s2;
	protected ArrayList<VisualizableTreeNode> children;
	public IfNode(AbstractSyntaxNode condition, AbstractSyntaxNode s1, AbstractSyntaxNode s2, Position position){
		this.condition = condition;
		this.s1 = s1;
		this.s2 = s2;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(condition);
		children.add(s1);
		if (s2 != null)
			children.add(s2);
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
		return "IF" + (s2 == null ? "" : "-ELSE");
	}

}
