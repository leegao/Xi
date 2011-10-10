package cs4120.der34dlc287lg342.xi.ir.context;

public class Register {
	static public int global = 0;
	public int value;
	
	public Register(){
		value = global++;
	}
	
	public int value(){
		return value;
	}
}
