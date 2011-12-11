package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiObjectType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class AttrNode extends ExpressionNode {
	public AbstractSyntaxTree parent, attr;
	public Position position;
	public ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	public AttrNode(AbstractSyntaxTree parent, AbstractSyntaxTree attr, Position pos){
		this.parent = parent;
		this.attr = attr;
		this.position = pos;
		children.add(parent);
		children.add(attr);
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
		// we need to make sure that lhs is an object type
		XiType lhs = parent.typecheck(stack);
		if (!(lhs instanceof XiObjectType)){
			throw new CompilationException("Cannot access attribute of nonobject type.", position);
		}
		if (!(attr instanceof IdNode)){
			throw new CompilationException("Cannot use a non-id attribute.", position);
		}
		XiObjectType object = (XiObjectType)lhs;
		if (object.isArrayType())
			throw new CompilationException("Cannot access attribute of array type.", position);
		
		String attr = ((IdNode)this.attr).id;
		if (object.layout.method_table.containsKey(object.mangle(attr))){
			FuncDeclNode func = object.layout.method_table.get(object.mangle(attr));
			type = func.type;
			return type;
		} else if (object.layout.var_table.containsKey(attr)){
			ClassDeclNode cvar = object.layout.var_table.get(attr);
			if (!cvar.typecheck(stack.top.class_context.get(object.type)).equals(XiPrimitiveType.UNIT))
				throw new CompilationException("Class variable declaration should be unit."+attr, position);
			try {
				type = stack.top.class_context.get(object.type).find_id(attr);
			} catch (InvalidXiTypeException e) {
				throw new CompilationException(e.getMessage(), position);
			}
			return type;
		} else {
			throw new CompilationException("Objects of type ["+object.type+"] contains no such attribute "+attr, position);
		}
	}
}
