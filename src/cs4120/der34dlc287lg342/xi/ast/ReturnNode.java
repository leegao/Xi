package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiFunctionType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ReturnNode extends AbstractSyntaxTree {

	public Position position;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public void add(AbstractSyntaxNode expr){
		children.add(expr);
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
		return "RETURN";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		XiFunctionType function;
		try {
			function = stack.find_return();
		}catch (InvalidXiTypeException ex) {
			throw new CompilationException(ex.getMessage(),position);
		}
		
		if (function != null) {
			if (function.ret.size() == children.size())
			{
				for (int index = 0; index < function.ret.size(); index++) {
					if (!((AbstractSyntaxTree)children.get(index)).typecheck(stack).equals(function.ret.get(index)))
						throw new CompilationException("Invalid return type", 
								((AbstractSyntaxTree)children.get(index)).position());
				}
				
				type = XiPrimitiveType.VOID;
				return type;
			} else {
				throw new CompilationException("Invalid number of return types", position);
			}
		}
		throw new CompilationException("Invalid return type", position);
	}
}
