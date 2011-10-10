package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

public class XiFunctionType implements XiType {
	public ArrayList<XiPrimitiveType> args, ret;
	
	public XiFunctionType(ArrayList<XiPrimitiveType> args, ArrayList<XiPrimitiveType> ret){
		this.args = args;
		this.ret = ret;
	}
	
	public XiFunctionType(ArrayList<XiPrimitiveType> args, XiPrimitiveType ret){
		this.args = args;
		this.ret = new ArrayList<XiPrimitiveType>();
		this.ret.add(ret);
	}
	
	public XiFunctionType(){
		this(new ArrayList<XiPrimitiveType>(), new ArrayList<XiPrimitiveType>());
	}
	
	@SuppressWarnings("unchecked")
	public XiReturnType returns(){
		return new XiReturnType((ArrayList<XiPrimitiveType>) ret.clone());
	}
	
	@Override
	public String toString(){
		String t = "";
		if (args.isEmpty()){
			t = "void";
		} else {
			for (XiPrimitiveType arg : args){
				t += arg + ",";
			}
			t = t.substring(0, t.length()-1);
		}
		
		t += "->";
		if (ret.isEmpty()){
			t = "void";
		} else {
			for (XiPrimitiveType r : ret){
				t += r + ",";
			}
			t = t.substring(0, t.length()-1);
		}
		return t;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Object clone(){
		ArrayList<XiPrimitiveType> a= (ArrayList<XiPrimitiveType>) args.clone(), r = (ArrayList<XiPrimitiveType>) ret.clone();
		return new XiFunctionType(a,r);
	}
}
