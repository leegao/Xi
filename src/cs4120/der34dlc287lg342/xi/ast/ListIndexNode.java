package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Eseq;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Expr;
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
/**Represents an array index in the AST*/
public class ListIndexNode extends ExpressionNode {
	
	protected Position position;
	/**expr is the expression that is is being indexed into for example :
	/**.e.g if this==(true,false)[0] then expr=ARRAY(3)
		(ARR-INDEX[bool]
            (ARRAY(2)[bool[]]
                    (true[bool])
                        
                    (false[bool])
                        )
                
            (0[int])
                )
        )
	 * 
	 */
	/**e.g if this=x[0] expr=ID(x)
	  (ARR-INDEX[bool]
	        (ID(x)[bool[]])
	            
	        (0[int])
	            )
	    )
	 */
	protected AbstractSyntaxTree expr;
	/**The index into the array*/
	protected AbstractSyntaxTree index;
	protected ArrayList<VisualizableTreeNode> children;
	public ListIndexNode(AbstractSyntaxNode expr, AbstractSyntaxNode index, Position position){
		this.expr = (AbstractSyntaxTree) expr;
		this.index = (AbstractSyntaxTree) index;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(expr);
		children.add(index);
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
		return "ARR-INDEX";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		// typecheck id
		XiType expr_type = ((AbstractSyntaxTree)expr).typecheck(stack);
		if (!(expr_type instanceof XiPrimitiveType))
			throw new CompilationException("Cannot index into a non-primitive type",position());
		if (!((XiPrimitiveType)expr_type).isArrayType())
			throw new CompilationException("Cannot index into a non-array type",position());
		XiPrimitiveType t = (XiPrimitiveType)((XiPrimitiveType)expr_type).clone();
		t.dimension.remove(0);
		
		XiType index_type = ((AbstractSyntaxTree)index).typecheck(stack);
		if (!(index_type instanceof XiPrimitiveType))
			throw new CompilationException("Cannot use nonprimitive indices",position());
		if (!((XiPrimitiveType)index_type).equals(XiPrimitiveType.INT))
			throw new CompilationException("Cannot use noninteger indices",position());
		
		type = t;
		return t;
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		// only if lhs is a listnode and rhs is an integer
		AbstractSyntaxTree lhs = ((AbstractSyntaxTree)expr).foldConstants();
		expr = resolve_const(0,lhs,expr);
		AbstractSyntaxTree rhs = ((AbstractSyntaxTree)index).foldConstants();
		index = resolve_const(1,rhs,index);
		
		if (expr instanceof ListNode && index instanceof IntegerLiteralNode){
			// return the i-th object from list
			ListNode list = (ListNode)expr;
			long i = ((IntegerLiteralNode)index).value;
			if (i >= list.children.size()) return null;
			AbstractSyntaxTree tree = (AbstractSyntaxTree)list.children.get((int)i);
			//assert(tree.type == type);
			tree.type = type;
			return tree;
		}
		return null;
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * Mem(Add(expr, Lsh(index, 3)))
		 */
		
		// first check that expr is not null
		
		IRTranslation tr1 = expr.to_ir(stack), tr2 = index.to_ir(stack);
		Expr lhs = tr1.expr(), rhs = tr2.expr();
		
		Temp base = new Temp(new TempRegister()), ind = new Temp(new TempRegister());
		Seq seq = new Seq(new Move(base, lhs), new Move(ind, rhs));
		
		Expr size = TempRegister.size_of(base);
		//seq.add(size_eseq.stmts);
		//Temp size = (Temp) size_eseq.expr;
		
		// next check that index is within bounds
		Label iftrue = new Label(), iffalse = new Label();
		seq.add(new Cjump(new Binop(Binop.UGE, ind, size), Label.get_outofbounds(stack), iffalse));
		//seq.add(new LabelNode(iftrue));
		//seq.add(new Exp(new Call(new Name(Label.outOfBounds))));
		//seq.add(new LabelNode(iffalse));
		
		//Temp r = new Temp(new Register());
		Expr arr_ind = new Mem(new Binop(Binop.PLUS, base, new Binop(Binop.LSH, ind, new Const(3))));
		//seq.add(new Move(r, arr_ind));
		return new IRTranslationExpr(new Eseq(arr_ind, seq));
	}
}
