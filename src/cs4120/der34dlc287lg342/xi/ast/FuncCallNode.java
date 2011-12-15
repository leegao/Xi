package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Eseq;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationExpr;
import cs4120.der34dlc287lg342.xi.typechecker.ClassLayout;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiFunctionType;
import cs4120.der34dlc287lg342.xi.typechecker.XiObjectType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiReturnType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class FuncCallNode extends ExpressionNode {

	protected Position position;
	protected AbstractSyntaxTree id;
	protected ArrayList<VisualizableTreeNode> children, args;
	public FuncCallNode(AbstractSyntaxTree id, ArrayList<VisualizableTreeNode> args, Position position){
		this.id = id;
		this.args = args;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(id);
		children.addAll(args);
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
		return "CALL("+args.size()+")";
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		XiType t = id.typecheck(stack);
		if (!(t instanceof XiFunctionType))
			throw new CompilationException("Attempt to call a nonfunction object", position());
		XiFunctionType func = (XiFunctionType)t;
		// make sure that args agree
		
		if (func.args.size() != args.size()){
			throw new CompilationException("Incorrect number of arguments applied to the function '"+id+"': expected "+args.size() + " but got "+func.args.size()+" instead", position());
		}
		int i = 0;
		for (VisualizableTreeNode child : args){
			if (child instanceof ExpressionNode){
				ExpressionNode expr = (ExpressionNode)child;
				XiType arg_type = expr.typecheck(stack);
				XiType expected = func.args.get(i++);
				if (!arg_type.equals(expected))
					throw new CompilationException("Invalid argument("+(i-1)+") of function '"+id+"': expected "+expected+", but got "+arg_type+" instead", position());
			} else {
				throw new CompilationException("Expected an expression type but got "+child.label()+" instead", position());
			}
		}
		
		
		type = ((XiFunctionType)t).returns().coerce();
		//System.out.println(stack.top);
		return type;
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		((AbstractSyntaxTree)id).foldConstants();
		
		int i = 0;
		for (VisualizableTreeNode arg : args){
			if (arg != null){
				AbstractSyntaxTree tree = ((AbstractSyntaxTree)arg).foldConstants();
				if (tree != null){
					args.set(i, tree);
					children.set(i+1, tree); // children is id + args
				}
			}
			i++;
		}
		
		// see if the funcdeclnode is trivial or not
		if (type != null && type instanceof XiPrimitiveType){
			// funcdecl with only one child, a return const, will be inlined
			// create a delegate class XiConstants that does a first pass over functions
			// this is not a large optimization problem so not really necessary
		}
		
		return null;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * Call(Name(id), args)
		 */
		if (id instanceof IdNode){
			Expr f = stack.find_name(((IdNode) id).id);
			//System.out.println(f);
			Call call = new Call(f);
			
	//		for (VisualizableTreeNode arg : args){
	//			IRTranslation tr = ((AbstractSyntaxTree)arg).to_ir(stack);
	//			call.add(tr.expr());
	//		}
			
			if (stack.current_class != null && ((XiObjectType)stack.current_class.type).layout.contains_method(((IdNode) id).id)){
				ClassLayout layout = ((XiObjectType)stack.current_class.type).layout;
				Expr arg = stack.find_name("this");
				call.add(arg);
			}
			
			for (int i = 0; i < (args.size()); i++){
				VisualizableTreeNode arg = args.get(i);
				IRTranslation tr = ((AbstractSyntaxTree)arg).to_ir(stack);
				call.add(tr.expr());
			}
			
			return new IRTranslationExpr(call);
		} else if (id instanceof AttrNode) {
			Eseq attr = (Eseq)id.to_ir(stack).expr();
			Call call = new Call(attr);
			
			//AbstractSyntaxTree instance = ((AttrNode) id).left;
			//call.add(instance.to_ir(stack).expr());
			
			// find the instance from attr
			//System.out.println(this + " " +attr.prettyPrint());
			Seq seq = (Seq)attr.stmts;
			Move mov = (Move)seq.children.get(0);
			Expr instance = mov.dest;//((Mem)((Binop)(((Mem)mov.dest).expr)).left).expr;
			call.add(instance);
			
			for (int i = 0; i < (args.size()); i++){
				VisualizableTreeNode arg = args.get(i);
				IRTranslation tr = ((AbstractSyntaxTree)arg).to_ir(stack);
				call.add(tr.expr());
			}
			
			return new IRTranslationExpr(call);
		}
		throw new InvalidIRContextException("Unimplemented: func_call of attr");
	}
}
