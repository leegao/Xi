package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class Class extends Stmt {
	public Label vt_label, size_label;
	public ArrayList<String> vt;
	public int size;
	public boolean need_init = false;
	public Class(String string) {
		vt_label = new Label("_I_vt_"+string);
		size_label = new Label("_I_size_"+string);
		vt = new ArrayList<String>();
	}

	public void add(String mangle) {
		//System.out.println(mangle);
		vt.add(mangle);
	}
	
}
