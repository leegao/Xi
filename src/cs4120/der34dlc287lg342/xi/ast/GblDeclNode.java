package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.IRContext;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiObjectType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class GblDeclNode extends AbstractSyntaxTree {
	public Position position;
	/**The id of this variable declaration.*/
	public IdNode id;
	/**The base type of this variable declaration*/
	public String type_name;
	/**If this represents an array declaration than this field contains any dimension
	 * specifiers.*/
	public ArrayList<VisualizableTreeNode> brackets;
	public ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	public AbstractSyntaxTree expr;
	public IRContext c = null;
	
	public GblDeclNode(IdNode id, String type, ArrayList<VisualizableTreeNode> brackets, Position position){
		this.id = id;
		this.type_name = type;
		this.brackets = brackets;
		this.position = position;
		this.expr = null;
		children.add(id);
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
		return "GDECL(" + id.id + ":" + type_name + ")";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {

		// make sure that the expressions within the brackets are ints
		for (VisualizableTreeNode b : brackets){
			if (b == null) continue;
			XiType t = ((AbstractSyntaxTree)b).typecheck(stack);
			// make sure that t is int type
			if (!t.equals(XiPrimitiveType.INT))
				throw new CompilationException("Cannot declare arrays with non-integer dimension", position());
			// and also make sure that it is a constant
			if (!(b instanceof IntegerLiteralNode))
				throw new CompilationException("Cannot declare class variable arrays with non-constant dimension", position());
		}
		
		
		XiType actual_type = null;
		if (expr != null){
			actual_type = expr.typecheck(stack);
		}
		
		try {
			if (stack.top.classes.containsKey(type_name)){
				XiObjectType t = new XiObjectType(stack.top.classes.get(type_name), brackets);
				
				if (actual_type != null){
					throw new CompilationException("Cannot assign an object into a class variable", position());
				}
				
				stack.top.add(id.id, t);
				if (! t.equals(((AbstractSyntaxTree)id).typecheck(stack)))
					throw new CompilationException("Cannot match the type of the object to the declared type", position());
			} else {
				XiPrimitiveType t = new XiPrimitiveType(type_name, brackets);
				
				if (actual_type != null && !t.equals(actual_type)){
					throw new CompilationException("Cannot assign a type of "+actual_type+" to a class variable of type "+t, position());
				}
				
				// need to make sure that expr is a const
				if (expr != null && !(expr instanceof IntegerLiteralNode || expr instanceof BoolLiteralNode))
					throw new CompilationException("Cannot assign a non-constant expression into a class variable.", position());
				
				stack.top.add(id.id, t);
				if (! t.equals(((AbstractSyntaxTree)id).typecheck(stack)))
					throw new CompilationException("Cannot match the type of the object to the declared type", position());
			}
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), position());
		}
		
		type = XiPrimitiveType.UNIT;
		return type;
	
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		return null;
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack)
			throws InvalidIRContextException {
		// TODO Auto-generated method stub
		return null;
	}

}
