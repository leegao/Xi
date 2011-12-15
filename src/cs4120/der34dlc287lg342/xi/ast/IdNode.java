package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationExpr;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class IdNode extends ExpressionNode {

	protected Position position;
	public String id;
	
	
	public IdNode(String id, Position position){
		this.id = id;
		this.position = position;
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		return new ArrayList<VisualizableTreeNode>();
	}

	@Override
	public String label() {
		return "ID("+id+")";
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		try {
			XiType t = stack.find_id(id);
			type = t;
			return type;
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), position());
		}
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		//if this is a final var
		try{
			XiPrimitiveType temp_type=((XiPrimitiveType)this.type);
			System.err.println(this +"is_initialized= "+temp_type.is_initialized);
			if(temp_type.is_final && temp_type.is_initialized) //is final type
				return temp_type.initial_value; //Just return init_value here?
			else if(((XiPrimitiveType)this.type).is_final && !temp_type.is_initialized){
				//should never be called since forcing init at decl time
				System.err.println("Warning: Using final variable " +id+ " before initialization");
				return null;
			}
			else
				return null;
			
		}
		catch(Exception e){
			//the type of this id is not primitive
			return null;
		}
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * return stack.resolve
		 */
		Expr e = stack.find_register(id);
		return new IRTranslationExpr(e);
	}
}
