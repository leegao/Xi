package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

public class XiReturnType implements XiType {
public ArrayList<XiType> ret;
	
	public XiReturnType(ArrayList<XiType> arrayList){
		this.ret = arrayList;
	}
	
	public XiReturnType(XiPrimitiveType ret){
		this.ret = new ArrayList<XiType>();
		this.ret.add(ret);
	}
	
	public XiReturnType(){
		this(new ArrayList<XiType>());
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
		for (XiType r : ret){
			t += r + ",";
		}
		return t;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Object clone(){
		ArrayList<XiType>  r = (ArrayList<XiType>) ret.clone();
		return new XiReturnType(r);
	}
}
