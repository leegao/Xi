package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class DeclNode implements AbstractSyntaxNode {

	public Position position;
	public IdNode id;
	public String type;
	public ArrayList<Integer> brackets;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public DeclNode(IdNode id, String type, ArrayList<Integer> brackets, Position position){
		this.id = id;
		this.type = type;
		this.brackets = brackets;
		this.position = position;
		children.add(id);
		
		// check that the decl is valid
		boolean isNull = false;
		for (int i : brackets){
			if (i >= 0 && isNull){
				// syntax error
			} else if (i == -1){
				isNull = true;
			}
		}
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
		return "DECL";
	}

}
