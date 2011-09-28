package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class FuncDeclNode implements AbstractSyntaxNode {

	public Position position;
	public AbstractSyntaxNode id;
	public ArrayList<VisualizableTreeNode> args;
	protected ArrayList<VisualizableTreeNode> children;
	BlockNode block;
	public ArrayList<XiPrimitiveType> types;
	public FuncDeclNode(IdNode id, ArrayList<VisualizableTreeNode> args, ArrayList<XiPrimitiveType> types, BlockNode block, Position position){
		this.id = id;
		this.args = args;
		this.position = position;
		this.block = block;
		this.types = types;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(id);
		children.addAll(args);
		children.add(block);
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
		return "FUNCDECL";
	}

}
