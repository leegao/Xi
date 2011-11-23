package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationExpr;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class IntegerLiteralNode extends ExpressionNode {
	public long value;
	protected Position position;
	public IntegerLiteralNode(long value, Position position){
		this.value = value;
		this.position = position;
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		// EMPTY
		return new ArrayList<VisualizableTreeNode>();
		
	}

	@Override
	public String label() {
		return "" + value;
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		type = XiPrimitiveType.INT;
		return type;
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		return new IRTranslationExpr(new Const(value));
	}
}
