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

public class IfNode extends AbstractSyntaxTree {

	protected Position position;
	protected AbstractSyntaxNode condition, s1, s2;
	protected ArrayList<VisualizableTreeNode> children;
	public IfNode(AbstractSyntaxNode condition, AbstractSyntaxNode s1, AbstractSyntaxNode s2, Position position){
		this.condition = condition;
		this.s1 = s1;
		this.s2 = s2;
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
		condition = resolve_const(cond_new);
		
		((AbstractSyntaxTree)s1).foldConstants();
		((AbstractSyntaxTree)s2).foldConstants();
		return null;
	}
}
