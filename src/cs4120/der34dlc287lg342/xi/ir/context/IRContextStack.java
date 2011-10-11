package cs4120.der34dlc287lg342.xi.ir.context;

import java.util.ArrayList;


public class IRContextStack extends ArrayList<IRContext>{

	private static final long serialVersionUID = 3696771296698086996L;

	public IRContext top() throws InvalidIRContextException{
		if (this.isEmpty())
			throw new InvalidIRContextException("Cannot find a context environment to generate IR with");
		return this.get(this.size()-1);
	}
	
	public Register register(String id) throws InvalidIRContextException{
		IRContext top = top();
		return top.register(id);
	}
	
	public Label name(String name) throws InvalidIRContextException{
		IRContext top = top();
		return top.name(name);
	}
	
	public Register find_register(String id) throws InvalidIRContextException{
		IRContext top = top();
		Register r = top.find_register(id);
		if (r == null)
			throw new InvalidIRContextException("Cannot find register associated with symbol id");
		return r;
	} 
	
	public Label find_name(String id) throws InvalidIRContextException{
		IRContext top = top();
		Label r = top.find_name(id);
		if (r == null)
			throw new InvalidIRContextException("Cannot find register associated with symbol id");
		return r;
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
