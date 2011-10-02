package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;

public class XiPrimitiveType implements XiType {
	public String type;
	public ArrayList<VisualizableTreeNode> dimension;
	
	ArrayList<Integer> static_dimension;
	
	public XiPrimitiveType(String type, ArrayList<VisualizableTreeNode> dimension){
		this.type = type;
		this.dimension = dimension;
		this.static_dimension = null;
	}
	
	public XiPrimitiveType(String type){
		this(type, new ArrayList<VisualizableTreeNode>());
	}
	
//	public ArrayList<Integer> staticDimension(){
//		// check if dimension is static
//		if (static_dimension != null)
//			return static_dimension;
//		
//		// typecheck 
//		
//		return static_dimension;
//	}
	
	@Override
	public String toString(){
		String t = type;
		for (VisualizableTreeNode i : dimension){
			AbstractSyntaxNode node = (AbstractSyntaxNode) i;
			t += "["+(node != null?node.label():"")+"]";
		}
		return t;
	}
	
	@Override
	public Object clone(){
		XiPrimitiveType t = new XiPrimitiveType(type, (ArrayList<VisualizableTreeNode>) dimension.clone());
		return t;
	}
	
	public static XiType UNIT = new XiPrimitiveType("unit");
	public static XiType VOID = new XiPrimitiveType("void");
	public static XiType INT = new XiPrimitiveType("int");
	public static XiType BOOL = new XiPrimitiveType("bool");
	
	public XiType baseType(){
		return new XiPrimitiveType(type);
	}
	
	public static XiPrimitiveType array(XiPrimitiveType t){
		XiPrimitiveType nt = (XiPrimitiveType)t.clone();
		nt.dimension.add(0, null);
		return nt;
	}
	
	public static XiType INT_ARR = array((XiPrimitiveType)INT);
	public static XiType BOOL_ARR = array((XiPrimitiveType)INT);
	public static XiType WILDCARD_ARR = array(new XiPrimitiveType("*"));
	
	public boolean isArrayType(){
		return !dimension.isEmpty();
	}
	
	public boolean sameBaseType(XiPrimitiveType t2){
		return type.equals(t2.type) || type.equals("*") || t2.type.equals("*");
	}
	
	@Override
	public boolean equals(Object o){
		if (o instanceof XiPrimitiveType){
			XiPrimitiveType t = (XiPrimitiveType)o;
			if (!sameBaseType(t)) return false;
			return t.dimension.size() == dimension.size();
		}
		return false;
	}
}
