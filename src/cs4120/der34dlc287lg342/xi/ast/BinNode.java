package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Eseq;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Jump;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
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
			e1_isfinal=lhs_type.is_final && (lhs_type.initial_value instanceof IntegerLiteralNode);
		}
		if(rhs !=null){
			rhs_type=(XiPrimitiveType)rhs.type;
			e2_isfinal=rhs_type.is_final && (rhs_type.initial_value instanceof IntegerLiteralNode);
		}
		
		if(e1_isfinal)
			e1=lhs_type.initial_value;
		if(e2_isfinal)
			e2=rhs_type.initial_value;
		*/
		if ((e1 instanceof IntegerLiteralNode)  && (e2 instanceof IntegerLiteralNode)){
			long value = ((IntegerLiteralNode)e1).value;
			long rvalue = ((IntegerLiteralNode)e2).value;
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
		
		//System.out.println(e1 + " " + e2);
		
		// TODO: handle case for lists
		if (((XiPrimitiveType)((AbstractSyntaxTree)e1).type).isArrayType() && ((XiPrimitiveType)((AbstractSyntaxTree)e2).type).isArrayType()){
			/* 
			 * i:int = 0
			 * n1:int = length(lhs)
			 * n2:int = n1 + length(rhs)
			 * arr:*[n2]
			 * while (i < n1){
			 *   arr[i] = lhs[i]
			 *   i = i + 1
			 * }
			 * while (i < n2){
			 *   arr[i] = rhs[i-n1]
			 *   i = i + 1
			 * }
			 */
			stack.strcat = true;
//			Temp i = new Temp(new TempRegister()), n1 = new Temp(new TempRegister()), n2 = new Temp(new TempRegister()), arr = new Temp(new TempRegister());
//			Temp base = new Temp(new TempRegister()), l = new Temp(new TempRegister()), r = new Temp(new TempRegister());
//			LabelNode a = new LabelNode(new Label()), b = new LabelNode(new Label()), c = new LabelNode(new Label());
//			LabelNode a_ = new LabelNode(new Label()), b_ = new LabelNode(new Label()), c_ = new LabelNode(new Label());
//			Seq seq = new Seq(
//				new Move(i, new Const(0)),
//				new Move(l, lhs), new Move(r, rhs),
//				new Move(n1, TempRegister.size_of(l)),
//				new Move(n2, new Binop(Binop.PLUS, n1, TempRegister.size_of(r))),
//				new Move(base, new Call(new Name(Label.alloc), new Binop(Binop.PLUS, n2, new Const(1)))),
//				new Move(new Mem(base), n2),
//				new Move(arr, new Binop(Binop.PLUS, base, new Const(8))),
//				a, // check cond
//				new Cjump(new Binop(Binop.LT, i, n1), b.label, c.label),
//				b, // body
//				new Move(
//					new Mem(new Binop(Binop.PLUS, arr, new Binop(Binop.LSH, i, new Const(3)))), 
//					new Mem(new Binop(Binop.PLUS, l, new Binop(Binop.LSH, i, new Const(3))))
//				), // arr[i] = lhs[i]
//				new Move(i, new Binop(Binop.PLUS, i, new Const(1))),
//				new Jump(a.label),
//				c, // end
//				
//				a_, // check cond
//				new Cjump(new Binop(Binop.LT, i, n2), b_.label, c_.label),
//				b_, // body
//				new Move(
//					new Mem(new Binop(Binop.PLUS, arr, new Binop(Binop.LSH, i, new Const(3)))), 
//					new Mem(new Binop(Binop.PLUS, r, new Binop(Binop.LSH, new Binop(Binop.MINUS, i, n1), new Const(3))))
//				), // arr[i] = rhs[i-n1]
//				new Move(i, new Binop(Binop.PLUS, i, new Const(1))),
//				new Jump(a_.label),
//				c_ // end
//			);
			
			//return new IRTranslationExpr(new Eseq(arr, seq));
			return new IRTranslationExpr(new Call(new Name(Label.internal_strcat), lhs, rhs));
		}
		
		return new IRTranslationExpr(
			new Binop(this.op, lhs, rhs)
		);
	}
}
