package cs4120.der34dlc287lg342.xi.assembly;

import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public abstract class Assembly {
	public String assem;
	public abstract HashSet<TempRegister> use();
	public abstract HashSet<TempRegister> def();
	public abstract Label jump();
	
}
