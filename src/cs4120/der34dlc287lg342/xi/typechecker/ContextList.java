package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

public class ContextList extends ArrayList<XiTypeContext> {
	private static final long serialVersionUID = 1802449172139979643L;

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
		throw new InvalidXiTypeException("Attempt to use undeclared identifier "+id);
	}
	
	public void push(XiTypeContext context){
		this.add(context);
	}
	
	public void pop() throws InvalidXiTypeException{
		if (this.isEmpty())
			throw new InvalidXiTypeException("Cannot pop context from an empty stack");
		this.remove(this.size()-1);
	}
	
	public XiFunctionType find_return() throws InvalidXiTypeException{
		if (this.isEmpty())
			throw new InvalidXiTypeException("Cannot find a context environment to typecheck with");
		for (int i = size()-1; i >= 0; i--){
			XiTypeContext context = this.get(i);
			XiFunctionType t = context.returnType;
			if (t != null){
				return t;
			}
		}
		throw new InvalidXiTypeException("Cannot find a return type");
	}
	
	public boolean breakable() throws InvalidXiTypeException{
		if (this.isEmpty())
			throw new InvalidXiTypeException("Cannot find a context environment to typecheck with");
		for (int i = size()-1; i >= 0; i--){
			XiTypeContext context = this.get(i);
			boolean t = context.isBreakable;
			if (t)
				return t;
		}
		return false;
	}
	
	@Override
	public Object clone(){
		// clones the context stack to be re-associated for each if/while/funcdecl
		ContextList clone = new ContextList();
		for (XiTypeContext c : this){
			Object o = c.clone();
			clone.add((XiTypeContext) o);
		}
		return clone;
	}
}
