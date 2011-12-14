package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ast.AttrNode;
import cs4120.der34dlc287lg342.xi.ast.ClassDeclNode;
import cs4120.der34dlc287lg342.xi.ast.ClassNode;
import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import cs4120.der34dlc287lg342.xi.ast.IdNode;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;

public class XiObjectType implements XiType {
	public ClassLayout layout;
	public ArrayList<VisualizableTreeNode> dimension;
	public String type;
	public XiObjectType(ClassNode klass){
		layout = new ClassLayout(klass.id, klass.ex);
		klass.type = this;
		this.type = klass.id.id;
		dimension = new ArrayList<VisualizableTreeNode>();
	}
	
	public XiObjectType(XiObjectType type, ArrayList<VisualizableTreeNode> dimension){
		layout = type.layout;
		this.type = type.type;
		this.dimension = dimension;
	}
	
	public String mangle(String id) {
		return id;
		//return "_"+layout.name+"_"+id;
	}


	public void add_method(String method, FuncDeclNode func) throws InvalidXiTypeException {
		layout.add_method(method, func);
	}


	public void add_variable(String id, ClassDeclNode var) throws InvalidXiTypeException {
		layout.add_variable(id, var);
	}
	
	public XiType baseType(){
		return new XiObjectType(this, new ArrayList<VisualizableTreeNode>());
	}
	
	public boolean isArrayType(){
		return !dimension.isEmpty();
	}
	
	public boolean sameBaseType(XiType t2){
		if (t2 instanceof XiObjectType)
			return type.equals(((XiObjectType)t2).type) || ((XiObjectType)t2).type.equals("*");
		else if (t2 instanceof XiPrimitiveType)
			return ((XiPrimitiveType)t2).type.equals("*");
		else
			return false;
	}
	
	public XiType dominantType(XiPrimitiveType t){
		if (type.equals("*")) return t;
		return this;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((dimension == null) ? 0 : dimension.hashCode());
		result = prime * result + ((layout == null) ? 0 : layout.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object o){
		if (o instanceof XiObjectType){
			XiObjectType t = (XiObjectType)o;
			if (!sameBaseType(t)) return false;
			return t.dimension.size() == dimension.size();
		}
		return false;
	}

	@Override
	public String toString() {
		String t = "o"+type;
		for (VisualizableTreeNode i : dimension){
			AbstractSyntaxNode node = (AbstractSyntaxNode) i;
			t += "["+(node != null?node.label():"")+"]";
		}
		return t;
	}

	public static XiObjectType Null = new XiObjectType(new ClassNode(new IdNode("null", null), null));
	
	public boolean ge(XiType actual_type) {
		if (actual_type == Null)
			return true;
		if (this.isArrayType())
			return equals(actual_type);
		if (sameBaseType(actual_type))
			return true;
		if (actual_type instanceof XiObjectType){
			XiObjectType pt = ((XiObjectType) actual_type).layout.parent_type;
			if (pt != null){
				return ge(pt);
			}
		}
		return false;
	}
	
	
}
