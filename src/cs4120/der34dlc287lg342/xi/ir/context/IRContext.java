package cs4120.der34dlc287lg342.xi.ir.context;

import java.util.HashMap;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Temp;

public class IRContext {
	public HashMap<String, Expr> symbols;
	public HashMap<String, LabelNode> names;
	public Label break_to;
	
	public IRContext(){
		symbols = new HashMap<String, Expr>();
		names = new HashMap<String, LabelNode>();
		break_to = null;
	}
	
	public Expr register(String id){
		Temp r = new Temp(new Register()); // on stack
		symbols.put(id, r);
		return r;
	}
	
	public Expr arg(String id, int i){
		Expr arg = new Binop(Binop.PLUS, new Temp(Register.FP), new Const(i*8+8));
		symbols.put(id, arg);
		return arg;
	}
	
	public LabelNode name(String name){
		LabelNode l = new LabelNode(new Label());
		names.put(name, l);
		return l;
	}
	
	public Expr find_register(String id){
		return symbols.get(id);
	}
	
	public LabelNode find_name(String name){
		return names.get(name);
	}
}
