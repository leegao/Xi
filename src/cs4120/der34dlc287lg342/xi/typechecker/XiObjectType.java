package cs4120.der34dlc287lg342.xi.typechecker;

import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ast.AttrNode;
import cs4120.der34dlc287lg342.xi.ast.ClassDeclNode;
import cs4120.der34dlc287lg342.xi.ast.ClassNode;
import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import cs4120.der34dlc287lg342.xi.ast.IdNode;

public class XiObjectType implements XiType {
	public ClassLayout layout;
	public XiObjectType(ClassNode klass){
		layout = new ClassLayout(klass.id, klass.ex);
		klass.type = this;
	}
	
	
	public String mangle(String id) {
		return "_"+layout.name+"_"+id;
	}


	public void add_method(String method, FuncDeclNode func) throws InvalidXiTypeException {
		layout.add_method(method, func);
	}


	public void add_variable(String id, ClassDeclNode var) throws InvalidXiTypeException {
		layout.add_variable(id, var);
	}
}
