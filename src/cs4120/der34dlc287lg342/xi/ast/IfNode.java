package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Jump;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.context.IRContext;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationStmt;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class IfNode extends AbstractSyntaxTree {

	protected Position position;
	protected AbstractSyntaxTree condition, s1, s2;
	protected ArrayList<VisualizableTreeNode> children;
	public IfNode(AbstractSyntaxNode condition, AbstractSyntaxNode s1, AbstractSyntaxNode s2, Position position){
		this.condition = (AbstractSyntaxTree)condition;
		this.s1 = (AbstractSyntaxTree)s1;
		this.s2 = (AbstractSyntaxTree)s2;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(condition);
		children.add(s1);
		if (s2 != null)
			children.add(s2);
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
		return "IF" + (s2 == null ? "" : "-ELSE");
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		XiType condType = ((AbstractSyntaxTree)condition).typecheck(stack);
		XiType s1Type = ((AbstractSyntaxTree)s1).typecheck(stack);
		XiType s2Type = null;
		if(s2 != null) 
			s2Type = ((AbstractSyntaxTree)s2).typecheck(stack);
		
		if(condType.equals(XiPrimitiveType.BOOL)){
			if( (s1Type.equals(XiPrimitiveType.UNIT) || s1Type.equals(XiPrimitiveType.VOID))){
				XiType t = XiPrimitiveType.UNIT;
				if( s2Type != null){
					if(s2Type.equals(XiPrimitiveType.UNIT) || s2Type.equals(XiPrimitiveType.VOID)){
						if (s1Type.equals(XiPrimitiveType.VOID) && s2Type.equals(XiPrimitiveType.VOID)){
							t = XiPrimitiveType.VOID;
						}
					} else
						throw new CompilationException("Else statement must be of type unit or void, but got expression instead", s2.position());
				}
				type = t;
				return type;
			}
			throw new CompilationException("Statements must be of type unit or void, but got expression instead", s1.position());
		}
		
		throw new CompilationException("Condition must be of boolean type, but got ["+condType+"] instead", condition.position());
			
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		AbstractSyntaxTree cond_new = ((AbstractSyntaxTree)condition).foldConstants();
		condition = resolve_const(0,cond_new,condition);
		
		((AbstractSyntaxTree)s1).foldConstants();
		if (s2 != null)
			((AbstractSyntaxTree)s2).foldConstants();
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * Seq(IRTranslation(cond).cond(a, b), Label(a), S[s1], Label(b), S[s2])
		 */
		
		IRTranslation tr_cond = this.condition.to_ir(stack);
		Label t = new Label(), f = new Label(), epilog = null;
		Seq seq = new Seq(tr_cond.cond(t, f), new LabelNode(t));
		
		// check s1 is a block
		if (!(s1 instanceof BlockNode)){
			// push a new context in
			stack.push(new IRContext());
		} 
		IRTranslation tr1 = s1.to_ir(stack);
		if (!(s1 instanceof BlockNode)){
			stack.pop();
		} 
		seq.add(tr1.stmt());
		if (s2 != null){
			// add jump to epilog
			epilog = new Label();
			seq.add(new Jump(epilog));
		}
		seq.add(new LabelNode(f));
		
		// check s2 is a block
		if (s2 != null){
			if (!(s2 instanceof BlockNode)){
				// push a new context in
				stack.push(new IRContext());
			} 
			IRTranslation tr2 = s2.to_ir(stack);
			if (!(s2 instanceof BlockNode)){
				stack.pop();
			} 
			seq.add(tr2.stmt());
			seq.add(new LabelNode(epilog));
		}
		return new IRTranslationStmt(seq);
	}
}
