package cs4120.der34dlc287lg342.xi.ir.context;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Eseq;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Temp;

public class Register {
	static public int global = 0;
	public int value;
	public String name;
	
	static public Register FP = new Register("fp"); // frame pointer, rsp
	static public Register RV = new Register("rv"); // return value register, rax
	
	public Register(boolean heap){
		value = global++;
		this.name = "" + value;
	}
	
	public Register(String name){
		this(false);
		this.name = name;
	}
	
	public Register(){
		this(false);
	}
	
	public int value(){
		return value;
	}
	
	public String toString(){
		return "r("+name+")";
	}
	
	public static Seq init_array(Expr base, Expr n){
		Temp p = new Temp(new Register());
		Call ptr = new Call(new Name(Label.alloc), new Binop(Binop.LSH, new Binop(Binop.PLUS, n, new Const(1)), new Const(3)));
		
		return new Seq(new Move(p, ptr), new Move(p, n), new Move(base, new Binop(Binop.PLUS, p, new Const(8))));
	}
}
