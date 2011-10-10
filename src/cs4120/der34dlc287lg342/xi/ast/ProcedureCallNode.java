package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiReturnType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ProcedureCallNode extends AbstractSyntaxTree {

	protected AbstractSyntaxNode call;
	public ProcedureCallNode(AbstractSyntaxNode call){
		this.call = call;
	}
	
	@Override
	public Position position() {
		return call.position();
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
		children.add(call);
		return children;
	}

	@Override
	public String label() {
		return "PROCEDURE";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		XiType callType = ((AbstractSyntaxTree)call).typecheck(stack);
		if (callType instanceof XiReturnType){
			XiReturnType func = (XiReturnType)callType;
			if(func.ret.isEmpty()){
				type = XiPrimitiveType.UNIT;
				return type;
			}
			throw new CompilationException("Procedure has return types " + func.ret + ", but is expecting no return type", position());
		}
		
		throw new CompilationException("Cannot call a non-procedure type ["+callType+"]", position());
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		((AbstractSyntaxTree)this.call).foldConstants();
		return null;
	}

}
