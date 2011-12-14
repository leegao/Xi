package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class UseNode extends AbstractSyntaxTree {
	protected Position position;
	public IdNode lib;
	protected ArrayList<VisualizableTreeNode> children;
	public UseNode(AbstractSyntaxNode lib, Position position){
		this.lib = (IdNode) lib;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(lib);
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
		return "USE";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
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
