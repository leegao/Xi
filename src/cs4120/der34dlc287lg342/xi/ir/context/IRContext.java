package cs4120.der34dlc287lg342.xi.ir.context;

import java.util.HashMap;

public class IRContext {
	public HashMap<String, Register> symbols;
	public HashMap<String, Label> names;
	public Label break_to;
	
	public IRContext(){
		symbols = new HashMap<String, Register>();
		names = new HashMap<String, Label>();
		break_to = null;
	}
	
	public Register register(String id){
		Register r = new Register(); // on stack
		symbols.put(id, r);
		return r;
	}
	
	public Label name(String name){
		Label l = new Label();
		names.put(name, l);
		return l;
	}
	
	public Register find_register(String id){
		return symbols.get(id);
	}
	
	public Label find_name(String name){
		return names.get(name);
	}
}
