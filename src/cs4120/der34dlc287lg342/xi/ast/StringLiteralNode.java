package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationExpr;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class StringLiteralNode extends ExpressionNode {
	public String value;
	protected Position position;
	public StringLiteralNode(String value, Position position){
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
		return "\"" + value + "\"";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		// integer list
		type = XiPrimitiveType.INT_ARR;
		return type;
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
//		ListNode list = new ListNode(position());
//		for (int c : value.getBytes()){
//			IntegerLiteralNode n = new IntegerLiteralNode(c, position());
//			n.type = XiPrimitiveType.INT;
//			list.add(n);
//		}
//		list.type = type;
//		return list;
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		//throw new InvalidIRContextException("Please run foldConstants first");
		// calls _I_c_internal_strdup_aii
		stack.strdup = true;
		Label ro_entry = new Label();
		
		stack.ro_data.put(ro_entry, value.getBytes());
		Call call = new Call(new Name(Label.internal_strdup), new Name(ro_entry));
		return new IRTranslationExpr(call);
	}
}
