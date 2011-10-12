package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationExpr;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class UnNotNode extends ExpressionNode {

	public AbstractSyntaxTree e1;
	public Position position;
	private ArrayList<VisualizableTreeNode> children; // cached so revisit won't be slow
	
	public UnNotNode(Position position){
		this.position = position;
	}
	
	public void set(AbstractSyntaxNode e1, Position position){
	    this.e1 = (AbstractSyntaxTree) e1;
	    children = new ArrayList<VisualizableTreeNode>();
	    children.add(e1);
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
	    return "UNOT";
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		// check e1 is boolean
		XiType t1 = ((AbstractSyntaxTree)e1).typecheck(stack);
		if (!(t1 instanceof XiPrimitiveType))
			throw new CompilationException("Not can only be applied to primitive types", position());
		XiPrimitiveType t = (XiPrimitiveType)t1;
		if (!t.equals(XiPrimitiveType.BOOL))
			throw new CompilationException("Not can only be applied to bool types", position());
		type = t;
		return type;
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		AbstractSyntaxTree rhs = ((AbstractSyntaxTree)e1).foldConstants();
		e1 = resolve_const(0,rhs,e1);
		
		// if e1 is bool literal node
		if (e1 instanceof BoolLiteralNode){
			boolean value = !((BoolLiteralNode)e1).value;
			BoolLiteralNode b = new BoolLiteralNode(value, position());
			b.type = type;
			return b;
		}
		
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		// 0 ^ 1 = 1
		// 1 ^ 1 = 0
		// Xor(expr, Const(1))
		
		// by technicality, this should be xor(expr, or(expr, 1)), but as long as boolean < 2, we're fine
		
		IRTranslation tr = e1.to_ir(stack);
		return new IRTranslationExpr(new Binop(Binop.XOR, tr.expr(), new Const(1)));
	}
}