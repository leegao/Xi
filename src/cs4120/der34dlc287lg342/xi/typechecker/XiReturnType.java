package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

public class XiReturnType implements XiType {
public ArrayList<XiPrimitiveType> ret;
	
	public XiReturnType(ArrayList<XiPrimitiveType> ret){
		this.ret = ret;
	}
	
	public XiReturnType(XiPrimitiveType ret){
		this.ret = new ArrayList<XiPrimitiveType>();
		this.ret.add(ret);
	}
	
	public XiReturnType(){
		this(new ArrayList<XiPrimitiveType>());
	}
	
	public XiType coerce(){
		if (this.ret.size() == 1){
			return this.ret.get(0);
		} else {
			return this;
		}
	}
	
	@Override
	public String toString(){
		String t = "";
		for (XiPrimitiveType r : ret){
			t += r + ",";
		}
		return t;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Object clone(){
		ArrayList<XiPrimitiveType>  r = (ArrayList<XiPrimitiveType>) ret.clone();
		return new XiReturnType(r);
	}
}
