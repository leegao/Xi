package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

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
	    return "EQ("+op+")";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		// typecheck e1 e2, no side affects
		XiType t1_ = ((AbstractSyntaxTree)e1).typecheck(stack);
		XiType t2_ = ((AbstractSyntaxTree)e2).typecheck(stack);
		
		if (!(t1_ instanceof XiPrimitiveType))
			throw new CompilationException("Cannot perform BINOP("+op+") on nonprimitive type LHS["+t1_+"]", e1.position());
		if (!(t2_ instanceof XiPrimitiveType))
			throw new CompilationException("Cannot perform BINOP("+op+") on nonprimitive type RHS["+t2_+"]", e2.position());
		
		XiPrimitiveType t1 = (XiPrimitiveType)t1_, t2 = (XiPrimitiveType)t2_;
		
		if (t1.equals(XiPrimitiveType.INT) && t2.equals(XiPrimitiveType.INT)){
			// all cases here
			type = XiPrimitiveType.BOOL;
			return type;
		} else if (t1.equals(XiPrimitiveType.BOOL) && t2.equals(XiPrimitiveType.BOOL) && op.equals("EQUAL") && op.equals("NOT_EQUAL")){
			type = XiPrimitiveType.BOOL;
			return type;
		} else{
			throw new CompilationException("Cannot perform EQ("+op+") on types", position());
		}
	}

}
