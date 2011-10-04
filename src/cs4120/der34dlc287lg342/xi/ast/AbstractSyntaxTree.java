package cs4120.der34dlc287lg342.xi.ast;


import cs4120.der34dlc287lg342.xi.typechecker.*;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class AbstractSyntaxTree implements AbstractSyntaxNode {

	public XiType type = null;
	public static boolean PA3 = false;
	
	@Override
	public Position position() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String label() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public String toString(){
		return label() + ((type != null) ? "["+type+"]" : "");
	}
	
	public XiType typecheck(ContextList stack) throws CompilationException{
		return null;
	}

}
