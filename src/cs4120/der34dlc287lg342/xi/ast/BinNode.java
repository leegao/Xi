package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Expr;
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

public class BinNode extends ExpressionNode {

	public AbstractSyntaxNode e1, e2;
	public Position position;
	private ArrayList<VisualizableTreeNode> children; // cached so revisit won't be slow
	public String op;
	
	public BinNode(String op){
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
	    return "BIN("+op+")";
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
			type = XiPrimitiveType.INT;
			return type;
		} else if (t1.sameBaseType(t2) && t1.isArrayType() && t2.isArrayType()){
			type = t1.dominantType(t2);
			return type;
		} else{
			throw new CompilationException("Cannot perform BINOP("+op+") on incorrect types", position());
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
		if (e1 instanceof IntegerLiteralNode && e2 instanceof IntegerLiteralNode){
			int value = ((IntegerLiteralNode)e1).value;
			int rvalue = ((IntegerLiteralNode)e2).value;
			if (op.equals("PLUS")){
				value += rvalue;
			} else if (op.equals("MINUS")){
				value -= rvalue;
			} else if (op.equals("TIMES")){
				value *= rvalue;
			} else if (op.equals("DIVIDE")){
				value /= rvalue;
			} else if (op.equals("MODULO")){
				value %= rvalue;
			}
			
			AbstractSyntaxTree new_tree = new IntegerLiteralNode(value, position);
			new_tree.type = type;
			return new_tree;
		} else if (e1 instanceof ListNode && e2 instanceof ListNode){
			// Scheme: if e1 and e2 are ListNodes, return ListNode
			ListNode llist = (ListNode)e1, rlist = (ListNode)e2;
			ListNode list = new ListNode(position);
			for (VisualizableTreeNode c : llist.children())
				list.add((AbstractSyntaxNode) c);
			for (VisualizableTreeNode c : rlist.children())
				list.add((AbstractSyntaxNode) c);
			list.type = type;
			return list;
		}
		
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack)  throws InvalidIRContextException{
		/*
		 * Binop(op, e[lhs], e[rhs])
		 */
		IRTranslation tr1 = ((AbstractSyntaxTree)e1).to_ir(stack), tr2 = ((AbstractSyntaxTree)e2).to_ir(stack);
		Expr lhs = tr1.expr(), rhs = tr2.expr();
		return new IRTranslationExpr(
			new Binop(this.op, lhs, rhs)
		);
	}
}
