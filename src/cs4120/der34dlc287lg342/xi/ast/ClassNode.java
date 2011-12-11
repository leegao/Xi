package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiFunctionType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ClassNode extends AbstractSyntaxTree{
	public Position position;
	public IdNode id;
	public ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	public IdNode ex;
	public ClassNode(IdNode id, Position position){
		this.position = position;
		this.id = id;
		//children.add(id);
	}
	
	@Override
	public Position position() {
		// TODO Auto-generated method stub
		return position;
	}
	@Override
	public Iterable<VisualizableTreeNode> children() {
		// TODO Auto-generated method stub
		return children;
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		for (VisualizableTreeNode child : children){
			if (child instanceof ClassDeclNode){
				ClassDeclNode cdecl = (ClassDeclNode)child;
				if (cdecl.type == null){
					XiType t = cdecl.typecheck(stack);
					if (!t.equals(XiPrimitiveType.UNIT))
						throw new CompilationException("ClassDeclNodes are expected to typecheck to unit", position);
				}
			} else if (child instanceof FuncDeclNode){
				XiType t = ((FuncDeclNode)child).typecheck(stack);
				
				if(!(t instanceof XiFunctionType))
					throw new CompilationException("Functions are expected to typecheck to their signature",position);
			} else {
				throw new CompilationException("Not expecting "+child.getClass().getSimpleName()+" here in the AST.", position);
			}
		}
		throw new CompilationException("Unimplemented yet: class.typecheck", position);
	}
	
	
}
