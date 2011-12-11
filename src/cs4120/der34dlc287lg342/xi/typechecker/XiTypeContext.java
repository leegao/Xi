package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;
import java.util.HashMap;

import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class XiTypeContext {
	public HashMap<String, XiType> symbols;
	public XiFunctionType returnType;
	public boolean isBreakable;
	public HashMap<String, XiObjectType> classes;
	public HashMap<FuncDeclNode, XiObjectType> method_classes;
	public HashMap<String, ContextList> class_context;
	
	public XiTypeContext(XiFunctionType r, boolean b){
		returnType = r;
		isBreakable = b;
		
		symbols = new HashMap<String, XiType>();
		classes = new HashMap<String, XiObjectType>();
		method_classes = new HashMap<FuncDeclNode, XiObjectType>();
	}
	
	public XiTypeContext(XiFunctionType r){
		this(r, false);
	}
	
	public XiTypeContext(boolean b){
		this(null, b);
	}
	
	public void add(String id, XiType t) throws InvalidXiTypeException{
		if (symbols.containsKey(id)) 
			throw new InvalidXiTypeException("Variable "+id+" already exists");
		symbols.put(id, t);
	}
	
	public void add(HashMap<String, XiType> h) throws InvalidXiTypeException{
		for (String s : h.keySet()){
			add(s, h.get(s));
		}
	}
	
	public XiType find(String id){
		//if (!symbols.containsKey(id)) return null;
		return symbols.get(id);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Object clone(){
		XiFunctionType func = (XiFunctionType) returnType.clone();
		XiTypeContext c = new XiTypeContext(func, isBreakable);
		c.symbols = (HashMap<String, XiType>) symbols.clone();
		return c;
	}
	
	public static XiType make_type(String type,  ArrayList<VisualizableTreeNode> brackets){
		if (type.equals("int") || type.equals("bool") || type.equals("void") || type.equals("unit") || type.equals("*")){
			return new XiPrimitiveType(type, brackets);
		} else {
			return new XiObjectType(XiTypechecker.globalContext.classes.get(type), brackets);
		}
	}
}
