package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;
import java.util.List;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class Dseq_ro extends Stmt {
	Label ro_entry;
	ArrayList<Integer> data;
	
	public Dseq_ro(Label name, byte[] bytes){
		this.ro_entry = name;
		this.data = new ArrayList<Integer>();
		for (byte b : bytes)
			data.add((int)b);
	}
	
	@Override
	public Seq lower(){
		return new Seq(this);
	}
	
}
