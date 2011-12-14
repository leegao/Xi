package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;

public class XiPrimitiveType implements XiType {
	/**Represents a primitive type as a string
	 * e.g. type==int*/
	public String type;
	
	/** ?? */
	public ArrayList<VisualizableTreeNode> dimension;
	
	/**?? This contains the dimensions for primitive arrays
	 * if they are specified in the declaration. */
	ArrayList<Integer> static_dimension;
	
	/** is a constant primitive*/
	public boolean is_final;
	public boolean is_initialized;
	
	public XiPrimitiveType(String type, ArrayList<VisualizableTreeNode> dimension){
		
		//set is_final
		String temp[]=type.split(" ");
		if(temp.length==2 && temp[0].equals("final")){
			this.type=temp[1];
			is_final=true;
		}
		else{
			this.type = type;
			is_final=false;
		}
		
		is_initialized=false;
		this.dimension = dimension;
		this.static_dimension = null;
	}
	
	
	public XiPrimitiveType(String type){
		this(type, new ArrayList<VisualizableTreeNode>());
	}
	
	public void setInitialized(){
		is_initialized=true;
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
	
	@SuppressWarnings("unchecked")
	@Override
	public Object clone(){
		XiPrimitiveType t = new XiPrimitiveType(type, (ArrayList<VisualizableTreeNode>)dimension.clone());
		return t;
	}
	
	/**Represents A primitive unit type*/
	public static XiType UNIT = new XiPrimitiveType("unit");
	/**Represents A primitive void type*/
	public static XiType VOID = new XiPrimitiveType("void");
	/**Represents A primitive int type*/
	public static XiType INT = new XiPrimitiveType("int");
	/**Represents A primitive bool type*/
	public static XiType BOOL = new XiPrimitiveType("bool");
	
	/** Creates and returns a XiTypePrimitive with the 
	 * same type field as this XiTypePrimitive
	 * @return A XiTypePrimitive with the type field set to the same as this.type.
	 */
	public XiType baseType(){
		return new XiPrimitiveType(type);
	}
	
	/**?? Creates a XiTypePrimitive that represents an array with the
	 * same base type as the given XiPrimitiveType. To do this, it simply 
	 * adds a null element to the dimension field (arraylist).
	 * @param t A XiTypePrimitive that represents an array of primitives.*/
	public static XiPrimitiveType array(XiPrimitiveType t){
		XiPrimitiveType nt = (XiPrimitiveType)t.clone();
		nt.dimension.add(0, null);
		return nt;
	}
	
	/** Represents A primitive int array type*/
	public static XiType INT_ARR = array((XiPrimitiveType)INT);
	public static XiType BOOL_ARR = array((XiPrimitiveType)BOOL);
	public static XiType WILDCARD_ARR = array(new XiPrimitiveType("*"));
	
	/** Checks if this XiPrimitiveType is an array
	 * @return True if this is an array, false otherwise.*/
	public boolean isArrayType(){
		return !dimension.isEmpty();
	}
	
	/**Compares two base types and returns wether the base types
	 * are the same. Note if either of the objects have * as there base
	 * type this function will always return true.
	 * @param t2 The other XiTypePrimitive to compare with.
	 * @return True if the base types of this and t2 are the same, false
	 * otherwise.*/
	public boolean sameBaseType(XiPrimitiveType t2){
		/*
		if(this.type.equals("final int") || t2.type.equals("final int")){
			//one type is final
			if(this.type.equals("final int")){ //this is final
				if(t2.type.equals("int"))
					return true;
				else
					return false;
			}
			else{ //t2 is final
				if(this.type.equals("int"))
					return true;
				else
					return false;
			}
		}
		*/
		return type.equals(t2.type) || type.equals("*") || t2.type.equals("*");
	}
	
	public XiType dominantType(XiPrimitiveType t){
		if (type.equals("*")) return t;
		return this;
	}
	
	/**Checks if two XiPrimitiveTypes are equal.In addition to checking that 
	 * the base types are the same, it also checks if the dimensions are the
	 * the same. 
	 * @param o A XiPrimitiveType object
	 * @return Trues if the types are equal false otherwise. */
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
