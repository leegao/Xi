package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class InstNode extends AbstractSyntaxTree {

	public Position position;
	AbstractSyntaxNode e;
	ArrayList<VisualizableTreeNode> list;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public InstNode(ArrayList<VisualizableTreeNode> list, AbstractSyntaxNode e, Position position){
		this.list = list;
		this.e = e;
		children = (ArrayList<VisualizableTreeNode>)list.clone();
		children.add(e);
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
		return "INST";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		if( list.size() == 1) {
			XiType decl = ((AbstractSyntaxTree)list.get(0)).typecheck(stack);
		}
		
		return null;
	}

}
