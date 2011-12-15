package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationAndCondition;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationOrCondition;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class BoolOpNode extends ExpressionNode {

	public AbstractSyntaxNode e1, e2;
	public Position position;
	private ArrayList<VisualizableTreeNode> children; // cached so revisit won't be slow
	public String op;
	
	public BoolOpNode(String op){
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
	    return "BOOLOP("+op+")";
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

		if (t1.equals(XiPrimitiveType.BOOL) && t2.equals(XiPrimitiveType.BOOL)){
			// all cases here
			type = XiPrimitiveType.BOOL;
			return type;
		} else{
			throw new CompilationException("Cannot perform BOOLOP("+op+") on types", position());
		}
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		// lhs CANNOT be a constant
		// rhs can be a constant
		AbstractSyntaxTree lhs = ((AbstractSyntaxTree)e1).foldConstants();
		AbstractSyntaxTree rhs = ((AbstractSyntaxTree)e2).foldConstants();

		e1 = resolve_const(0,lhs,e1);
		e2 = resolve_const(1,rhs,e2);
		
		// Scheme: if e1 and e2 are int literals, return int literal
		//Treat final vars like int literals too (assumes type checking
		//has already been done)
		/*
		boolean e1_isfinal=false;
		boolean e2_isfinal=false;
		XiPrimitiveType lhs_type=null;
		XiPrimitiveType rhs_type=null;
		
		if(lhs!=null ){
			//System.err.println("Node is"+lhs);
			lhs_type=(XiPrimitiveType)lhs.type;
			e1_isfinal=lhs_type.is_final && (lhs_type.initial_value instanceof BoolLiteralNode);
		}
		if(rhs !=null){
			rhs_type=(XiPrimitiveType)rhs.type;
			e2_isfinal=rhs_type.is_final && (rhs_type.initial_value instanceof BoolLiteralNode);
		}
		
		if(e1_isfinal)
			e1=lhs_type.initial_value;
		if(e2_isfinal)
			e2=rhs_type.initial_value;
		*/
		if (e1 instanceof BoolLiteralNode && e2 instanceof BoolLiteralNode){
			boolean value = ((BoolLiteralNode)e1).value;
			boolean rvalue = ((BoolLiteralNode)e2).value;
			if (op.equals("AND")){
				value = value & rvalue;
			} else if (op.equals("OR")){
				value = value | rvalue;
			}

			AbstractSyntaxTree new_tree = new BoolLiteralNode(value, position);
			new_tree.type = type;
			return new_tree;
		}
		
		return null;
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * Short circuited and/or. Use the respective IR nodes
		 */
		IRTranslation tr1 = ((AbstractSyntaxTree)e1).to_ir(stack), tr2 = ((AbstractSyntaxTree)e2).to_ir(stack);
		Expr lhs = tr1.expr(), rhs = tr2.expr();
		Binop b = new Binop(op, lhs, rhs);
		return op.equals("AND") ? new IRTranslationAndCondition(b) : new IRTranslationOrCondition(b);
	}
}
