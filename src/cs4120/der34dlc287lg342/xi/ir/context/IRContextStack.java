package cs4120.der34dlc287lg342.xi.ir.context;

import java.util.ArrayList;
import java.util.HashMap;

import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;


public class IRContextStack extends ArrayList<IRContext>{

	private static final long serialVersionUID = 3696771296698086996L;
	public boolean dynamic_allocation = false;
	public boolean strdup = false;
	public HashMap<Label, byte[]> ro_data;
	public boolean abort = false;

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
	
	public Expr find_register(String id) throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context frame to work with");
		for (int i = this.size()-1; i >= 0; i--){
			Expr r = get(i).find_register(id);
			if (r != null)
				return r;
		}
		throw new InvalidIRContextException("Cannot find register associated with symbol id");
	} 
	
	public LabelNode find_name(String id) throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context frame to work with");
		for (int i = this.size()-1; i >= 0; i--){
			LabelNode r = get(i).find_name(id);
			if (r != null)
				return r;
		}
		throw new InvalidIRContextException("Cannot find register associated with symbol id");
	} 
	
	public Label set_break() throws InvalidIRContextException{
		IRContext top = top();
		Label b = new Label();
		top.break_to = b;
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
}
