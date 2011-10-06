package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

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
	protected AbstractSyntaxNode condition, s;
	protected ArrayList<VisualizableTreeNode> children;
	public WhileNode(AbstractSyntaxNode condition, AbstractSyntaxNode s, Position position){
		this.condition = condition;
		this.s = s;
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
		condition = resolve_const(0,cond);
		
		((AbstractSyntaxTree)s).foldConstants();
		
		return null;
	}
}
