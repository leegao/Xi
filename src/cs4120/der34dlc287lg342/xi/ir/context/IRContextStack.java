package cs4120.der34dlc287lg342.xi.ir.context;

import java.util.ArrayList;
import java.util.HashMap;

import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ast.AttrNode;
import cs4120.der34dlc287lg342.xi.ast.ClassNode;
import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import cs4120.der34dlc287lg342.xi.ast.IdNode;
import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.typechecker.ClassLayout;
import cs4120.der34dlc287lg342.xi.typechecker.XiObjectType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;


public class IRContextStack extends ArrayList<IRContext>{

	private static final long serialVersionUID = 3696771296698086996L;
	public boolean dynamic_allocation = false;
	public boolean strdup = false;
	public boolean strcat = false;
	public HashMap<Label, byte[]> ro_data;
	public boolean abort = false;
	public ClassNode current_class = null;
	public HashMap<String, IRContext> classes = new HashMap<String, IRContext>();
	public HashMap<String, Expr> globals = new HashMap<String, Expr>();

	public IRContextStack(){
		ro_data = new HashMap<Label, byte[]>();
	}
	
	public IRContext top() throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context environment to generate IR with");
		return this.get(this.size()-1);
	}
	
	public Expr add_register(String id) throws InvalidIRContextException{
		IRContext top = top();
		return top.add_register(id);
	}
	
	public LabelNode add_name(FuncDeclNode name) throws InvalidIRContextException{
		IRContext top = top();
		return top.add_name(name);
	}
	
	public LabelNode add_name(String name, FuncDeclNode decl) throws InvalidIRContextException{
		IRContext top = top();
		return top.add_name(name, decl);
	}
	
	public Expr find_register(String id) throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context frame to work with");
		
		if (this.globals.containsKey(id)){
			return this.globals.get(id);
		}
		
		if (this.current_class != null && ((XiObjectType)current_class.type).layout.contains_variable(id)){
			// return this.x
			ClassLayout layout = ((XiObjectType)current_class.type).layout;
			Expr this_ = find_register("this");
			//System.out.println(layout.var_index(id));
			return new Mem(new Binop(Binop.PLUS, this_, new Const(8+8*layout.var_index(id))));
		}
		
		for (int i = this.size()-1; i >= 0; i--){
			Expr r = get(i).find_register(id);
			if (r != null)
				return r;
		}
		throw new InvalidIRContextException("Cannot find register associated with symbol "+id+".");
	} 
	
	public Expr find_name(String id) throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context frame to work with");
		
//		if (this.current_class != null && ((XiObjectType)current_class.type).layout.contains_method(id)){
//			ClassLayout layout = ((XiObjectType)current_class.type).layout;
//			Expr this_ = find_register("this");
//			return new Mem((new Binop(Binop.PLUS, new Mem(this_), new Const(8+8*layout.method_index(id)))));
//		}
		
		for (int i = this.size()-1; i >= 0; i--){
			
			//LabelNode r = get(i).find_name(mangle_method(id));
			
			//if (r != null)
			//	return new Name(r.label);
			LabelNode r = get(i).find_name(id);
			if (r != null)
				return new Name(r.label);
		}
		throw new InvalidIRContextException("Cannot find register associated with symbol id");
	} 
	
	public Label set_break() throws InvalidIRContextException{
		IRContext top = top();
		Label b = new Label();
		top.break_to = b;
		return b;
	}
	
	public Label set_continue() throws InvalidIRContextException{
		IRContext top = top();
		Label b = new Label();
		top.continue_to = b;
		return b;
	}
	
	public Label break_to() throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context frame to work with");
		for (int i = this.size()-1; i >= 0; i--){
			Label break_to = get(i).break_to;
			if (break_to != null)
				return break_to;
		}
		throw new InvalidIRContextException("No breaks found within the context stack");
	}
	
	public Label continue_to() throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context frame to work with");
		for (int i = this.size()-1; i >= 0; i--){
			Label continue_to = get(i).continue_to;
			if (continue_to != null)
				return continue_to;
		}
		throw new InvalidIRContextException("No continues found within the context stack");
	}
	
	public Label return_to() throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context frame to work with");
		for (int i = this.size()-1; i >= 0; i--){
			Label return_to = get(i).return_to;
			if (return_to != null)
				return return_to;
		}
		throw new InvalidIRContextException("No breaks found within the context stack");
	}
	
	public void break_pop() throws InvalidIRContextException{
		// pass for now
	}
	
	public void push(IRContext c){
		add(c);
	}
	
	public void pop() throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot pop context from an empty stack");
		this.remove(this.size()-1);
	}

	public String mangle_method(String method){
		if (current_class == null){
			return method;
		} else {
			return current_class.id.id+"_"+method;
		}
	}
	
//	public static String mangle(AbstractSyntaxTree id) {
//		if (id instanceof IdNode){
//			return ((IdNode)id).id;
//		} else if (id instanceof AttrNode) {
//			AttrNode attr = (AttrNode)id;
//			XiType t = attr.left.type;
//			return "_"+((XiObjectType)t).type+"_"+mangle(attr.attr);
//		}
//		System.out.println("DEBUG: oh no! mangle");
//		return null;
//	}
}
