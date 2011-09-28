package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.HashMap;

public class XiTypeContext {
	HashMap<String, XiType> symbols;
	XiFunctionType returnType;
	boolean isBreakable;
	
	public XiTypeContext(XiFunctionType r, boolean b){
		returnType = r;
		isBreakable = b;
		
		symbols = new HashMap<String, XiType>();
	}
	
	public XiTypeContext(XiFunctionType r){
		this(r, false);
	}
	
	public XiTypeContext(boolean b){
		this(null, b);
	}
	
	public void add(String id, XiType t) throws InvalidXiTypeException{
		if (symbols.containsKey(id)) 
			throw new InvalidXiTypeException("variable "+id+" already exists");
		symbols.put(id, t);
	}
	
	public XiType find(String id){
		//if (!symbols.containsKey(id)) return null;
		return symbols.get(id);
	}
}
