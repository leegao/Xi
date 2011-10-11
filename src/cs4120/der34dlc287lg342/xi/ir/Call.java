package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;
import java.util.List;

public class Call extends Expr {
	public Expr func;
	public ArrayList<Expr> args;
	
	public Call(Expr func, Expr... args_arr){
		this.func = func;
		args = new ArrayList<Expr>();
		for (Expr e : args_arr)
			args.add(e);
	}
	
	public Call(Expr func, List<Expr> args){
		this.func = func;
		this.args.addAll(args);
	}
	
	public void add(Expr arg){
		args.add(arg);
	}
}
