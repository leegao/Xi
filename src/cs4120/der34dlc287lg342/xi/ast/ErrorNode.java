package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.Position;

public class ErrorNode extends AbstractSyntaxTree{
	public Position position;

	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public ErrorNode(Position p){
		position=p;
		//no children allowed
	}
	
	@Override
	public Iterable<VisualizableTreeNode> children() {
		// TODO Auto-generated method stub
		return children;
	}

	
	public Position position() {
		return position;
	}
	
	

}
