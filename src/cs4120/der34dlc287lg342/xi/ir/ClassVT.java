package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class ClassVT extends Stmt {
	public Label label;
	public ArrayList<String> vt;
	
	public ClassVT(String string) {
		label = new Label(string);
		vt = new ArrayList<String>();
	}

	public void add(String mangle) {
		//System.out.println(mangle);
		vt.add(mangle);
	}
	
}
