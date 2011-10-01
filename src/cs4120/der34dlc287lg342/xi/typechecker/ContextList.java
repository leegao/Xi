package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

public class ContextList extends ArrayList<XiTypeContext> {
	
	public XiTypeContext top() throws InvalidXiTypeException{
		if (this.isEmpty())
			throw new InvalidXiTypeException("Cannot find a context environment to typecheck with");
		return this.get(this.size()-1);
	}
	
	public void add_id(String id, XiType t) throws InvalidXiTypeException{
		XiTypeContext context = top();
		context.add(id, t);
	}
	
	public XiType find_id(String id) throws InvalidXiTypeException{
		if (this.isEmpty())
			throw new InvalidXiTypeException("Cannot find a context environment to typecheck with");
		for (int i = size()-1; i >= 0; i--){
			XiTypeContext context = this.get(i);
			XiType t = context.find(id);
			if (t != null){
				return t;
			}
		}
		throw new InvalidXiTypeException("Cannot find a type associated with the identifier "+id);
	}
	
	public void push(XiTypeContext context){
		this.add(context);
	}
	
	public void pop() throws InvalidXiTypeException{
		if (this.isEmpty())
			throw new InvalidXiTypeException("Cannot pop context from an empty stack");
		this.remove(this.size()-1);
	}
}
