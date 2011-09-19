package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class BinNode extends ExpressionNode {

	public AbstractSyntaxNode e1, e2;
	public Position position;
	private ArrayList<VisualizableTreeNode> children; // cached so revisit won't be slow
	public String type;
	
	public BinNode(String type){
		this.type = type;
	}
	
	public void set(AbstractSyntaxNode e1, AbstractSyntaxNode e2, Position position){
	    this.e1 = e1;
	    this.e2 = e2;
	    children = new ArrayList<VisualizableTreeNode>();
	    children.add(e1);
	    children.add(e2);
	    this.position = position;
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
	    return e1.label() + " " + type + " " + e2.label();
	}

}
