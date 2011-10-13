package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Eseq;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Register;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationExpr;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ListNode extends ExpressionNode {
	protected Position position;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public ListNode(Position position){
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
		return "ARRAY(" + children.size() + ")";
	}
	
	// DO NOT CALL before typechecking and constant folding
	public static boolean equals_to(ListNode lvalue, ListNode rvalue){
		boolean equals = true;
		if (lvalue.children.size() != rvalue.children.size())
			equals = false;
		else{
			int i = 0;
			for (VisualizableTreeNode c : lvalue.children){
				AbstractSyntaxTree l = (AbstractSyntaxTree)c;
				AbstractSyntaxTree r = (AbstractSyntaxTree) rvalue.children.get(i);
				// only if they are constants
				if (l instanceof IntegerLiteralNode && r instanceof IntegerLiteralNode){
					if (((IntegerLiteralNode)l).value != ((IntegerLiteralNode)r).value){
						equals = false;
						break;
					}
				} else if (l instanceof BoolLiteralNode && r instanceof BoolLiteralNode){
					if (((BoolLiteralNode)l).value != ((BoolLiteralNode)r).value){
						equals = false;
						break;
					}
				} else if (l instanceof ListNode && r instanceof ListNode){
					if (!equals_to((ListNode)l, (ListNode)r)) {equals = false; break;}
				}
				
				if (!equals) break;
			}
		}
		
		return equals;
	}
	
	public int length(){
		return children.size();
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		// case 1: * array of 0 elements
		if (children.isEmpty()){
			type = XiPrimitiveType.WILDCARD_ARR;
			return type;
		} else {
			// case 2: int/bool primitive 
			XiType t = null;
			for (VisualizableTreeNode child : children){
				AbstractSyntaxTree node = (AbstractSyntaxTree)child;
				XiType new_t = node.typecheck(stack);
				if (!(new_t instanceof XiPrimitiveType))
					throw new CompilationException("Lists must have primitive base types", position());
				if (t == null){
					t = new_t;
				} else {
					// check t = new_t
					if (!t.equals(new_t))
						throw new CompilationException("List construction expected type "+t+", but got "+new_t+" instead", position());
					if (((XiPrimitiveType)t).sameBaseType((XiPrimitiveType) XiPrimitiveType.WILDCARD_ARR)){
						t = new_t;
					}
				}
			}
			XiPrimitiveType base = XiPrimitiveType.array((XiPrimitiveType) t);
			
			type = base;
			return type;
		}
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		int i = 0;
		for (VisualizableTreeNode c : children()){
			AbstractSyntaxTree t = ((AbstractSyntaxTree)c).foldConstants();
			resolve_const(i++,t,null);
		}
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * new heap r
		 * ESEQ(Seq(
		 *  Move(r, length),
		 *  for each child
		 *    Move(Add(r, 8+i*8), child)
		 *  ), Add(r, 8)
		 * )
		 */
		Expr base = new Temp(new Register());
		Seq seq = Register.init_array(base, new Const(children.size()));

		int i = 0;
		for (VisualizableTreeNode child : children()){
			AbstractSyntaxTree c = (AbstractSyntaxTree) child;
			IRTranslation tr = c.to_ir(stack);
			seq.add(new Move(new Binop(Binop.PLUS, base, new Const(8*i++)), tr.expr()));
		}
		Expr eseq = new Eseq(base, seq);
		return new IRTranslationExpr(eseq);
	}
}
