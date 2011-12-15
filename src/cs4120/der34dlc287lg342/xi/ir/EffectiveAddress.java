package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class EffectiveAddress extends Expr {
	// leaq label(%rip), %r(n)
	Label addr;
	
	public EffectiveAddress(Label addr){
		this.addr = addr;
	}
}
