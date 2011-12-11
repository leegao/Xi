package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;
import java.util.HashMap;

import cs4120.der34dlc287lg342.xi.ast.ClassDeclNode;
import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import cs4120.der34dlc287lg342.xi.ast.IdNode;

public class ClassLayout {
	public String name, parent;
	public ArrayList<String> method_vector = new ArrayList<String>();
	public HashMap<String, FuncDeclNode> method_table = new HashMap<String, FuncDeclNode>();
	
	public ArrayList<String> var_vector = new ArrayList<String>();
	public HashMap<String, ClassDeclNode> var_table = new HashMap<String, ClassDeclNode>();
	
	public XiObjectType parent_type = null;
	
	public ClassLayout(IdNode name, IdNode parent){
		this.name = name.id;
		if (parent != null)
			this.parent = parent.id;
	}
	public void add_method(String method, FuncDeclNode func) throws InvalidXiTypeException {
		if (method_table.containsKey(method)){
			throw new InvalidXiTypeException("Duplicate function declaration for "+func.id.id);
		}
		method_vector.add(method);
		method_table.put(method, func);
	}
	
	public void add_variable(String id, ClassDeclNode var) throws InvalidXiTypeException {
		if (var_table.containsKey(id)){
			throw new InvalidXiTypeException("Duplicate function declaration for "+var.id.id);
		}
		var_vector.add(id);
		var_table.put(id, var);
	}
	
	
}
