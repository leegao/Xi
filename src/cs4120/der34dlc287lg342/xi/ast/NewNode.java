package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.Position;

public class NewNode extends ExpressionNode {
	Position position;
	IdNode klass;
	ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	public NewNode(IdNode klass, Position pos){
		this.klass = klass;
		this.position = pos;
		children.add(klass);
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
