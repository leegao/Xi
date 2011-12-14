package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationStmt;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiObjectType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class AssignmentNode extends AbstractSyntaxTree {

	protected Position position;
	protected AbstractSyntaxNode id, expr;
	protected ArrayList<VisualizableTreeNode> children;
	public AssignmentNode(ExpressionNode index, AbstractSyntaxNode expr, Position position){
		this.id = index;
		this.expr = expr;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(index);
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
		return "ASSIGNMENT";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		// push a new context frame onto the stack
		XiType t = ((AbstractSyntaxTree)id).typecheck(stack);
		XiType exprType = ((AbstractSyntaxTree)expr).typecheck(stack);
		
		if (t instanceof XiObjectType){
			if (!((XiObjectType)t).ge(exprType)){
				throw new CompilationException("Invalid type in assignment: expected ["+t+"] or a derived type, but got ["+exprType+"] instead", 
						((AbstractSyntaxTree)expr).position());
			}
		}else if (!t.equals(exprType)){
			throw new CompilationException("Invalid type in assignment: expected ["+t+"] but got ["+exprType+"] instead", 
					((AbstractSyntaxTree)expr).position());
		}
		
		type = XiPrimitiveType.UNIT;
		return type;
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		// lhs CANNOT be a constant
		((AbstractSyntaxTree)id).foldConstants();
		// rhs can be a constant
		AbstractSyntaxTree rhs = ((AbstractSyntaxTree)expr).foldConstants();
		expr = resolve_const(1,rhs,expr);
		
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * MOVE(e[lhs], e[expr])
		 */
		IRTranslation e1 = ((AbstractSyntaxTree)id).to_ir(stack), e2 = ((AbstractSyntaxTree)expr).to_ir(stack);
		Expr lhs = e1.expr(), rhs = e2.expr();
		
		// if lhs is a mem type, remove the first one
//		if (lhs instanceof Mem)
//			lhs = ((Mem)lhs).expr;
//		else if (lhs instanceof Eseq){
//			Eseq eseq = (Eseq)lhs;
//			if (eseq.expr instanceof Mem){
//				eseq.expr = ((Mem)eseq.expr).expr;
//			}
//		}

		return new IRTranslationStmt(new Move(lhs, rhs));
	}
}
