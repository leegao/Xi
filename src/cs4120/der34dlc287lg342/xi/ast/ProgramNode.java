package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;
import java.util.List;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiFunctionType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypeContext;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ProgramNode extends AbstractSyntaxTree {

	public Position position;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public ProgramNode(Position position){
		this.position = position;
	}
	
	public void add(AbstractSyntaxNode expr){
		children.add(expr);
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
		return "PROGRAM";
	}
	
	@Override
 	public XiType typecheck(ContextList stack) throws CompilationException {
		for( VisualizableTreeNode childTree : children) {
			if( childTree instanceof FuncDeclNode) {
				XiType childType = ((AbstractSyntaxTree)childTree).typecheck(stack);
				
				if(!(childType instanceof XiFunctionType))
					throw new CompilationException("Invalid program",position);
			}
		}
		
		type = XiPrimitiveType.UNIT;
		return type;
	}

}
