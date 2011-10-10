package cs4120.der34dlc287lg342.xi.ir.context;

public class Label {
	static public int global = 0;
	public int value;
	
	public Label(){
		value = global++;
	}
	
	public int value(){
		return value;
	}
}
