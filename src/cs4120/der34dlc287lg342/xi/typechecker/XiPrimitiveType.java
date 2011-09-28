package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

public class XiPrimitiveType implements XiType {
	public String type;
	ArrayList<Integer> dimension;
	
	public XiPrimitiveType(String type, ArrayList<Integer> dimension){
		this.type = type;
		this.dimension = dimension;
	}
	
	public XiPrimitiveType(String type){
		this(type, new ArrayList<Integer>());
	}
	
	@Override
	public String toString(){
		String t = type;
		for (int i : dimension){
			t += "["+(i>-1?i:"")+"]";
		}
		return t;
	}
}
