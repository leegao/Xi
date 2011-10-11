package cs4120.der34dlc287lg342.xi.ir.context;

public class Register {
	static public int global = 0;
	public int value;
	public boolean heap;
	
	static public Register FP = new Register();
	
	public Register(boolean heap){
		value = global++;
		this.heap = heap;
	}
	
	public Register(){
		this(false);
	}
	
	public int value(){
		return value;
	}
}
