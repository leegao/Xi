package cs4120.der34dlc287lg342.xi.ir.context;

public class Register {
	static public int global = 0;
	public int value;
	public boolean heap;
	public String name;
	
	static public Register FP = new Register("fp"); // frame pointer, rsp
	static public Register RV = new Register("rv"); // return value register, rax
	
	public Register(boolean heap){
		value = global++;
		this.heap = heap;
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
}
