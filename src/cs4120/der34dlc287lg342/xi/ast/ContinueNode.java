package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Jump;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationStmt;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ContinueNode extends AbstractSyntaxTree{

	private Position position;

	public ContinueNode(Position position) {
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
	public XiType typecheck(ContextList stack) throws CompilationException {
		boolean breakable;
		try {
			breakable = stack.breakable();
		}catch (InvalidXiTypeException ex) {
			throw new CompilationException(ex.getMessage(),position);
		}
		
		if (!breakable){
			throw new CompilationException("Cannot continue if not in a loop", position);
		}
		
		type = XiPrimitiveType.UNIT;
		return type;
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack)
			throws InvalidIRContextException {
		/*
		 * JUMP(stack.continue_to())
		 */
		
		return new IRTranslationStmt(new Jump(stack.continue_to()));
	}

}
