package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;
import java.util.HashSet;

public class XiFunctionType implements XiType {
	public ArrayList<XiType> args, ret;
	
	public XiFunctionType(ArrayList<XiType> argumentList, ArrayList<XiType> types){
		// invariant: only primitive or object type
		this.args = argumentList;
		this.ret = types;
	}
	
	public XiFunctionType(ArrayList<XiType> args, XiType ret){
		this.args = args;
		this.ret = new ArrayList<XiType>();
		this.ret.add(ret);
	}
	
	public XiFunctionType(){
		this(new ArrayList<XiType>(), new ArrayList<XiType>());
	}
	
	@SuppressWarnings("unchecked")
	public XiReturnType returns(){
		return new XiReturnType((ArrayList<XiType>) ret.clone());
	}
	
	@Override
	public String toString(){
		String t = "";
		if (args.isEmpty()){
			t += "void";
		} else {
			for (XiType arg : args){
				t += arg + ",";
			}
			t = t.substring(0, t.length()-1);
		}
		
		t += "->";
		if (ret.isEmpty()){
			t += "void";
		} else {
			if (ret.size() > 1)
				t += "(";
			for (XiType r : ret){
				t += r + ",";
			}
			t = t.substring(0, t.length()-1);
			if (ret.size() > 1)
				t += ")";
		}
		return t;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Object clone(){
		ArrayList<XiType> a= (ArrayList<XiType>) args.clone(), r = (ArrayList<XiType>) ret.clone();
		return new XiFunctionType(a,r);
	}
	
	public String str_of_primitive(XiPrimitiveType t){
		String str = t.type.equals("int") ? "i" : "b";
		for (int i = 0; i < t.dimension.size(); i++)
			str = "a"+str;
		return str;
	}
	
	public String str_of_object(XiObjectType t){
		String str = "o"+t.type.length()+t;
		for (int i = 0; i < t.dimension.size(); i++)
			str = "a"+str;
		return str;
	}
	
	public String str_of(XiType t){
		if (t instanceof XiPrimitiveType){
			return str_of_primitive((XiPrimitiveType) t);
		} else {
			return str_of_object((XiObjectType) t);
		}
	}
	
	public String mangle(String id){
		String str = "_I"+id+"_";
		
		// encode return
		if (ret.isEmpty())
			str += "p";
		else if (ret.size() == 1){
			str += str_of(ret.get(0));
		} else {
			str += "t"+ret.size();
			for (XiType t : ret)
				str += str_of(t);
		}
		
		// encode args
		for (XiType t : args){
			str += str_of(t);
		}
		
		return str;
	}
	
	@Override
	public boolean equals(Object that){
		if (that instanceof XiFunctionType){
			
			XiFunctionType other = (XiFunctionType)that;
			
			//System.out.println(new HashSet<XiType>(this.args) + " " + (new HashSet<XiType>(other.args)));
			return new HashSet<XiType>(this.args).equals(new HashSet<XiType>(other.args)) 
					&& new HashSet<XiType>(this.ret).equals(new HashSet<XiType>(other.ret));
		}
		return false;
	}
}
