package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class WhileNode extends AbstractSyntaxTree {

	protected Position position;
	protected AbstractSyntaxNode condition, s;
	protected ArrayList<VisualizableTreeNode> children;
	public WhileNode(AbstractSyntaxNode condition, AbstractSyntaxNode s, Position position){
		this.condition = condition;
		this.s = s;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(condition);
		children.add(s);
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
		return "WHILE";
	}

}
