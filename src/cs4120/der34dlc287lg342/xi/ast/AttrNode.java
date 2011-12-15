package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationExpr;
import cs4120.der34dlc287lg342.xi.typechecker.ClassLayout;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiObjectType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class AttrNode extends ExpressionNode {
	public AbstractSyntaxTree left;
	public IdNode attr;
	public Position position;
	public ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	public AttrNode(AbstractSyntaxTree parent, AbstractSyntaxTree attr, Position pos){
		this.left = parent;
		this.attr = (IdNode) attr;
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
		XiType lhs = left.typecheck(stack);
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
		if (object.layout.contains_method(object.mangle(attr))){
			FuncDeclNode func = object.layout.get_method(object.mangle(attr));
			func.make_type();
			type = func.type;
			return type;
		} else if (object.layout.contains_variable(attr)){
			ClassDeclNode cvar = object.layout.get_variable(attr);
			if (cvar.type == null && !cvar.typecheck(stack.top.class_context.get(object.type)).equals(XiPrimitiveType.UNIT))
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
	@Override
	public IRTranslation to_ir(IRContextStack stack)
			throws InvalidIRContextException {
		// lhs is class, has object type
		// 1 check if is method
		ClassLayout layout = ((XiObjectType)left.type).layout;
		IRTranslation tr = left.to_ir(stack);
		Expr lhs = tr.expr();
		if (layout.contains_method(attr.id)){
			return new IRTranslationExpr(new Mem(new Binop(Binop.PLUS, new Mem(lhs), new Const(8*layout.method_index(attr.id)))));
		} else {
			// this is a variable
			return new IRTranslationExpr(new Mem(new Binop(Binop.PLUS, lhs, new Const(8+8*layout.var_index(attr.id)))));
		}
		//throw new InvalidIRContextException("Unimplemented: attr");
	}
}
