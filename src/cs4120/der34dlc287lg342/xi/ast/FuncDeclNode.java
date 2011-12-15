package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Func;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Return;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.context.IRContext;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationStmt;
import cs4120.der34dlc287lg342.xi.typechecker.*;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class FuncDeclNode extends AbstractSyntaxTree {

	public Position position;
	/**The id of this function declaration represented as an 
	 * IDNode*/
	public IdNode id;
	/**The arguments of this function declaration represented as a list 
	 * of variable declarations*/
	public ArrayList<VisualizableTreeNode> args;
	/**?? All the children of this function declaration node.*/
	protected ArrayList<VisualizableTreeNode> children;
	/**The block associated with this function declaration represented
	 * as a BlockNode*/
	public BlockNode block;
	/**The return types of this function declaration represented as a
	 * list of  XiPrimitiveTypes. Note this is not a Node in the AST. */
	public ArrayList<XiType> types;
	
	/**Sets all fields including the type field which is part of the super class AbstractSyntaxTree*/
	public FuncDeclNode(IdNode id, ArrayList<VisualizableTreeNode> args, ArrayList<XiType> types, BlockNode block, Position position){
		this.id = id;
		this.args = args;
		this.position = position;
		this.block = block;
		this.types = types;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(id);
		children.addAll(args);
		children.add(block);
		
		ArrayList<XiType> argumentList = new ArrayList<XiType>();
		for (VisualizableTreeNode arg : this.args){
			DeclNode decl = (DeclNode) arg;
			argumentList.add(new XiPrimitiveType(decl.type_name, decl.brackets));
			
		}
		
		this.type = new XiFunctionType(argumentList, this.types);;
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
		return "FUNCDECL";
	}

	public void make_type(){
		ArrayList<XiType> argumentList = new ArrayList<XiType>();
		for (VisualizableTreeNode arg : this.args){
			DeclNode decl = (DeclNode) arg;
			argumentList.add(XiTypeContext.make_type(decl.type_name, decl.brackets));
		}
		
		for (XiType ret : new ArrayList<XiType>(this.types)){
			if (ret instanceof XiPrimitiveType){
				int i = this.types.indexOf(ret);
				this.types.set(i, XiTypeContext.make_type(((XiPrimitiveType) ret).type, ((XiPrimitiveType) ret).dimension));
			}
		}
		
		this.type = new XiFunctionType(argumentList, this.types);
	}
	
	public XiType typecheck(ContextList stack) throws CompilationException{
		// push a new context frame onto the stack
		XiTypeContext frame = new XiTypeContext((XiFunctionType) type);
		/*
		 * before type checking this function we need to add the arguments to the
		 * current context
		 */
		make_type();
		for (VisualizableTreeNode arg : this.args){ 
			DeclNode decl = (DeclNode) arg;
			IdNode id = (IdNode)decl.id;
			
			if (stack.klass != null){
				XiObjectType arg_type = stack.top.classes.get(stack.klass.id.id);
				
				if (arg_type.layout.contains_variable(id.id)){
					throw new CompilationException("Method argument "+id+" is not allowed to shadow class variables.", decl.position());
				}
			}
			try {
				
				if (stack.top.classes.containsKey(decl.type_name)){
					XiType t = new XiObjectType(stack.top.classes.get(decl.type_name), decl.brackets);
					frame.add(id.id, t);
				} else {
					XiType t = new XiPrimitiveType(decl.type_name, decl.brackets);
					frame.add(id.id, t);
				}
				
				//frame.add(id.id, new XiPrimitiveType(decl.type_name, decl.brackets));
			} catch (InvalidXiTypeException e) {
				throw new CompilationException(e.getMessage(), position());
			}
		}
		
		// ensure that we're already on the stack
		XiType our_type = ((AbstractSyntaxTree)id).typecheck(stack);
		//System.out.println(our_type + " " + type);
		if (!our_type.equals(type))
			throw new CompilationException("Invalid function declaration: signature doesn't match actual type", position());
		
		/*
		 * If the block type checks we return a 
		 * XiFuncDecType for this node, otherwise a CompilationException
		 * is thrown.
		 */
		block.new_context = frame;
		XiType t = block.typecheck(stack);
		if (t.equals(XiPrimitiveType.UNIT)){
			// make sure that type has no return types
			if (types.size() > 0)
				throw new CompilationException("Function cannot be guaranteed to return, expects return types of " + types + "", position());
		}

		return type;
	}
	
	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * Label(fname)
		 * S[s1]
		 * S[s2]
		 * ...
		 * 
		 * within the next context, push the symbols as args
		 */
		IRContext c = new IRContext();
		Label return_to = new Label();
		c.return_to = return_to;
		int i = 0;
		Func seq = new Func(((Name)stack.find_name(id.id)).label);
		int size = args.size();
		if (types.size()>1){
			seq.add(c.add_arg("_tuple", i++, ++size));
		}
		
		if (stack.current_class != null){
			seq.add(c.add_arg("this", i++, ++size));
		}
		
		for (VisualizableTreeNode child : args){
			DeclNode arg = (DeclNode)child;
			seq.add(c.add_arg(arg.id.id, i++, size));
		}
		
		block.new_ircontext = c;
		IRTranslation tr = block.to_ir(stack);
		seq.add(tr.stmt());
		
		// add a return label
		seq.add(new Return(return_to));
		
		return new IRTranslationStmt(seq);
	}
	
	public XiFunctionType type(){
		return (XiFunctionType)type;
	}
}
