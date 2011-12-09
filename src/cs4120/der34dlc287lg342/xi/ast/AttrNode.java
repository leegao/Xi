package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.Position;

public class AttrNode extends ExpressionNode {
	public AbstractSyntaxTree parent, attr;
	public Position position;
	public ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	public AttrNode(AbstractSyntaxTree parent, AbstractSyntaxTree attr, Position pos){
		this.parent = parent;
		this.attr = attr;
		this.position = pos;
		children.add(parent);
		children.add(attr);
	}
	@Override
	public Position position() {
		// TODO Auto-generated method stub
		return position;
	}
	@Override
	public Iterable<VisualizableTreeNode> children() {
		// TODO Auto-generated method stub
		return children;
	}
}
