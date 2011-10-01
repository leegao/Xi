package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;
import java.util.List;

import cs4120.der34dlc287lg342.xi.typechecker.*;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class FuncDeclNode extends AbstractSyntaxTree {

	public Position position;
	public AbstractSyntaxNode id;
	public ArrayList<VisualizableTreeNode> args;
	protected ArrayList<VisualizableTreeNode> children;
	public BlockNode block;
	public ArrayList<XiPrimitiveType> types;
	
	public XiFunctionType type;
	
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
		
		ArrayList<XiPrimitiveType> argumentList = new ArrayList<XiPrimitiveType>();
		for (VisualizableTreeNode arg : this.args){
			DeclNode decl = (DeclNode) arg;
			argumentList.add(new XiPrimitiveType(decl.type, decl.brackets));
		}
		
		this.type = new XiFunctionType(argumentList, this.types);;
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

	public XiType typecheck(List<XiTypeContext> stack) throws CompilationException{
		// push a new context frame onto the stack
		XiTypeContext frame = new XiTypeContext(type);
		for (VisualizableTreeNode arg : this.args){
			DeclNode decl = (DeclNode) arg;
			IdNode id = (IdNode)decl.id;
			try {
				frame.add(id.id, new XiPrimitiveType(decl.type, decl.brackets));
			} catch (InvalidXiTypeException e) {
				throw new CompilationException(e.getMessage(), position());
			}
		}
		stack.add(frame);
		
		block.typecheck(stack);
		
		return type;
	}
}
