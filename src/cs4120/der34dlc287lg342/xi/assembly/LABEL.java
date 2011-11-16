package cs4120.der34dlc287lg342.xi.assembly;

import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class LABEL extends Assembly {
	public Label label;
	public LABEL(String assem, Label label){
		this.assem = assem;
		this.label = label;
	}
	@Override
	public HashSet<TempRegister> use() {
		return new HashSet<TempRegister>();
	}

	@Override
	public HashSet<TempRegister> def() {
		return new HashSet<TempRegister>();
	}

	@Override
	public Label jump() {
		return null;
	}

}
