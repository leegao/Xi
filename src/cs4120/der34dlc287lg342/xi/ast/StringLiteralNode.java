package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class StringLiteralNode extends ExpressionNode {
	public String value;
	protected Position position;
	public StringLiteralNode(String value, Position position){
		this.value = value;
		this.position = position;
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		// EMPTY
		return new ArrayList<VisualizableTreeNode>();
		
	}

	@Override
	public String label() {
		return "\"" + value + "\"";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		// integer list
		type = XiPrimitiveType.INT_ARR;
		return type;
		
	}

}
