package cs4120.der34dlc287lg342.xi.ir.context;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Eseq;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Temp;

public class Register {
	static public int global = 0;
	public int value;
	public String name;
	
	static public Register Null = new Register("null");
	static public Register FP = new Register("fp"); // frame pointer, rsp (dereferences to location on stack)
	static public Register RV = new Register("rv"); // return value register, rax
	static public Register RDI = new Register("rdi"); 
	static public Register RSI = new Register("rsi"); 
	static public Register RDX = new Register("rdx"); 
	static public Register RCX = new Register("rcx"); 
	static public Register R8 = new Register("r8"); 
	static public Register R9 = new Register("r9"); 
	
	static public Register[] free_registers = new Register[]{RDI, RSI, RDX, RCX, R8, R9};
	
	public Register(){
		value = global++;
		this.name = "" + value;
	}
	
	public Register(String name){
		this();
		this.name = name;
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
		
		return new Seq(new Move(p, ptr), new Move(new Mem(p), n), new Move(base, new Binop(Binop.PLUS, p, new Const(8))));
	}
	
	public static Expr size_of(Expr base_expr){
		/*
		 * Cjump[cond:(base == null)][iftrue:8][iffalse:9]
		 * LabelNode[label:8]
		 * Exp[expr:call[error=[]]]
		 * LabelNode[label:9]
		 * Move[dest:r(#)][src:Mem[(base - 8)]]
		 */
		Label iftrue = new Label(), iffalse = new Label();
		Temp size = new Temp(new Register()), base = new Temp(new Register());
		Seq seq = new Seq(
//			new Move(base, base_expr),
//			new Cjump(new Binop(Binop.EQ, base, new Temp(Register.Null)), iftrue, iffalse),
//			new LabelNode(iffalse),
			new Move(size, new Mem(new Binop(Binop.MINUS, base_expr, new Const(8))))
//			new LabelNode(iftrue),
//			new Exp(new Call(new Name(Label.outOfBounds)))
		);
		
		//return new Eseq(size, seq);
		return new Mem(new Binop(Binop.MINUS, base_expr, new Const(8)));
	}
}
