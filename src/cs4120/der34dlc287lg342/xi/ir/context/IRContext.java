package cs4120.der34dlc287lg342.xi.ir.context;

import java.util.HashMap;

import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import cs4120.der34dlc287lg342.xi.ir.Arg;
import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.Temp;

public class IRContext {
	public HashMap<String, Expr> symbols;
	public HashMap<String, LabelNode> names;
	public Label break_to;
	public Label return_to;
	
	public IRContext(){
		symbols = new HashMap<String, Expr>();
		names = new HashMap<String, LabelNode>();
		break_to = null;
	}
	
	public Expr add_register(String id){
		Temp r = new Temp(new TempRegister(id)); // on stack
		symbols.put(id, r);
		return r;
	}
	
	public Stmt add_arg(String id, int i, int n){
		Temp temp = new Temp(new TempRegister(id));
		symbols.put(id, temp);
		
		//if (i < 6){
			//TempRegister r = new TempRegister();
		return new Seq(new Arg(temp.temp, i, n));
//		} else{
//			Expr arg = new Mem(new Binop(Binop.PLUS, new Temp(TempRegister.FP), new Const((n-i)*8+8)));
//			return new Move(temp, arg);
//		}
		
		
	}
	
	public LabelNode add_name(FuncDeclNode decl){
		LabelNode l = new LabelNode(new Label(decl.type().mangle(decl.id.id)));
		names.put(decl.id.id, l);
		return l;
	}
	
	public Expr find_register(String id){
		return symbols.get(id);
	}
	
	public LabelNode find_name(String name){
		return names.get(name);
	}

	public LabelNode add_name(String name, FuncDeclNode decl) {
		LabelNode l = new LabelNode(new Label(decl.type().mangle(name, decl.id.id)));
		names.put(decl.id.id, l);
		return l;
	}
}
