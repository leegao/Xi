package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public abstract class Stmt implements VisualizableTreeNode{
	ArrayList<VisualizableTreeNode> children;
	public Stmt(){
		children = new ArrayList<VisualizableTreeNode>();
	}
	
	@Override
	public Iterable<VisualizableTreeNode> children() {
		return children;
	}
	
	@Override
	public String label() {
		return this.toString();
	}
}
