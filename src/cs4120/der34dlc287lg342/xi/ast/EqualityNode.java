package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;
import java.util.List;

import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypeContext;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class EqualityNode extends ExpressionNode {

	public AbstractSyntaxNode e1, e2;
	public Position position;
	private ArrayList<VisualizableTreeNode> children; // cached so revisit won't be slow
	public String op;
	
	public EqualityNode(String op){
		this.op = op;
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
	    return "BOOLOP("+type+")";
	}
	
	@Override
	public XiType typecheck(List<XiTypeContext> stack) throws CompilationException{
		// typecheck e1 e2, no side affects
		XiPrimitiveType t1 = (XiPrimitiveType)((AbstractSyntaxTree)e1).typecheck(stack);
		XiPrimitiveType t2 = (XiPrimitiveType)((AbstractSyntaxTree)e2).typecheck(stack);
		
		if (t1.equals(XiPrimitiveType.INT) && t2.equals(XiPrimitiveType.INT)){
			// all cases here
			return XiPrimitiveType.BOOL;
		} else if (t1.equals(XiPrimitiveType.BOOL) && t2.equals(XiPrimitiveType.BOOL) && op.equals("EQUAL") && op.equals("NOT_EQUAL")){
			return XiPrimitiveType.BOOL;
		} else{
			throw new CompilationException("Cannot perform EQUAITY("+op+") on types", position());
		}
	}

}
