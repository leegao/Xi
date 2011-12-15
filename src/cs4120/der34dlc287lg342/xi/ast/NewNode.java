package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiObjectType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class NewNode extends ExpressionNode {
	Position position;
	IdNode klass;
	ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	public NewNode(IdNode klass, Position pos){
		this.klass = klass;
		this.position = pos;
		children.add(klass);
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
		// first test that we're in the source file, this should be easily remedied by adding interface_classes
		
		// next make sure that Class is valid
		if (!stack.top.classes.containsKey(klass.id))
			throw new CompilationException("Cannot initialize instance of an undefined class "+klass.id, position);
		
		XiObjectType t = stack.top.classes.get(klass.id);
		type = t;
		return type;
		
		//throw new CompilationException("Unimplemented yet: new.typecheck", position);
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack)
			throws InvalidIRContextException {
		/*
		 * call(_alloca, new Mem()
		 */
		
		throw new InvalidIRContextException("Unimplemented: new");
	}
}
