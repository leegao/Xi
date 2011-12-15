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
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypeContext;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class WhileNode extends AbstractSyntaxTree {

	protected Position position;
	protected AbstractSyntaxTree condition, s;
	protected ArrayList<VisualizableTreeNode> children;
	public WhileNode(AbstractSyntaxNode condition, AbstractSyntaxNode s, Position position){
		this.condition = (AbstractSyntaxTree) condition;
		this.s = (AbstractSyntaxTree) s;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(condition);
		children.add(s);
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
		return "WHILE";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		XiType condType = ((AbstractSyntaxTree)condition).typecheck(stack);
		
		boolean isBlock = s instanceof BlockNode;
		
		XiTypeContext context = new XiTypeContext(true);
		if (isBlock)
			((BlockNode)s).new_context = context;
		else
			stack.push(context);
		
		XiType stmntType = ((AbstractSyntaxTree)s).typecheck(stack);
		
		if (!isBlock) // we need to pop off context manually
			try {
				stack.pop();
			} catch (InvalidXiTypeException e) {
				throw new CompilationException(e.getMessage(), position());
			}
		
		if(condType.equals(XiPrimitiveType.BOOL) && (stmntType.equals(XiPrimitiveType.UNIT)) || stmntType.equals(XiPrimitiveType.VOID)) {
			type = stmntType;
			return type;
		} 
		
		throw new CompilationException("Invalid boolean expression", position);
		
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		AbstractSyntaxTree cond = ((AbstractSyntaxTree)condition).foldConstants();
		condition = resolve_const(0,cond,condition);
		
		((AbstractSyntaxTree)s).foldConstants();
		
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * add end into break_to
		 * Seq(
		 *   label(head),
		 *   cond.to_ir(stack).cond(body, end),
		 *   label(body),
		 *   s.to_ir(stack).stmt(),
		 *   jump(head),
		 *   label(end) <- resolve using stack
		 * )
		 */
		Label head = new Label(), body = new Label(), end = new Label();
		IRContext c = new IRContext();
		c.break_to = end;
		c.continue_to = head;
		
		Seq seq = new Seq(
			new LabelNode(head),
			condition.to_ir(stack).cond(body, end),
			new LabelNode(body)
		); // make sure evaluation order is not unspecified in java as it is in C
		
		if (!(s instanceof BlockNode)){
			stack.push(c);
		} else {
			((BlockNode)s).new_ircontext = c;
		}
		
		seq.add(s.to_ir(stack).stmt()); // add in the body of IR
		
		if (!(s instanceof BlockNode))
			stack.pop();
		
		seq.add(new Jump(head));
		seq.add(new LabelNode(end));
		
		return new IRTranslationStmt(seq);
	}
}
