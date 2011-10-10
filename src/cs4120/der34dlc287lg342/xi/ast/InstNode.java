package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiReturnType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class InstNode extends AbstractSyntaxTree {

	public Position position;
	AbstractSyntaxNode e;
	ArrayList<VisualizableTreeNode> list;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	@SuppressWarnings("unchecked")
	public InstNode(ArrayList<VisualizableTreeNode> list, AbstractSyntaxNode e, Position position){
		this.list = list;
		this.e = e;
		children = (ArrayList<VisualizableTreeNode>)list.clone();
		children.add(e);
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
		return "INST";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		if(list.size() == 1) {
			XiType exprType = ((AbstractSyntaxTree)e).typecheck(stack);
			XiType declType = ((AbstractSyntaxTree)list.get(0)).typecheck(stack);
			
			if(declType.equals(XiPrimitiveType.UNIT)){
				DeclNode decl = (DeclNode)list.get(0);
				XiType t;
				try {
					t = stack.find_id(decl.id.id);
				} catch (InvalidXiTypeException e1) {
					throw new CompilationException(e1.getMessage(), position());
				}
				if (!t.equals(exprType))
					throw new CompilationException("Invalid type in instantiation: expected ["+t+"] but got ["+exprType+"] instead", 
							((AbstractSyntaxTree)e).position());
				
				type = XiPrimitiveType.UNIT;
				return type;
			}else 
				throw new CompilationException("Declaration did not typecheck", position);
			
		} else if(list.size() > 1) {
			XiType function = ((AbstractSyntaxTree)e).typecheck(stack);
			if( function instanceof XiReturnType) {
				XiReturnType functionType = (XiReturnType)function;
				
				if(list.size() == functionType.ret.size()) {
					for(int index = 0; index < list.size(); index++) {
						if(!(list.get(index) instanceof UnderscoreNode)){
							((AbstractSyntaxTree)list.get(index)).typecheck(stack);
							DeclNode decl = ((DeclNode)list.get(index));
							XiType t;
							try {
								t = stack.find_id(decl.id.id);
							} catch (InvalidXiTypeException e1) {
								throw new CompilationException(e1.getMessage(), position());
							}
							if( !t.equals(functionType.ret.get(index)) )
								throw new CompilationException("Invalid type at index " + index, position);
						}
					}
					
					type = XiPrimitiveType.UNIT;
					return type;
					
				} else {
					throw new CompilationException("Invalid number of return types", position);
				}
			} else 
				throw new CompilationException("Expecting a function call but got "+function+" instead", position);
		} 
			
		throw new CompilationException("Invalid Instantion", position);
	
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		// lhs CANNOT be a constant
		// rhs can be a constant
		AbstractSyntaxTree lhs = ((AbstractSyntaxTree)e).foldConstants();
		e = resolve_const(list.size(),lhs,e);
		
		for (VisualizableTreeNode c : list) ((AbstractSyntaxTree)c).foldConstants();
		
		return null;
	}

}
