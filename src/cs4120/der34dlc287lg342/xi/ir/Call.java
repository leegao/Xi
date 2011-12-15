package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import cs4120.der34dlc287lg342.xi.tiles.CallArbitraryTile;
import cs4120.der34dlc287lg342.xi.tiles.CallTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class Call extends Expr {
	public Expr func;
	public ArrayList<Expr> args;
	public TempRegister tuple;
	
	public Call(Expr func, Expr... args_arr){
		super();
		this.func = func;
		args = new ArrayList<Expr>();
		for (Expr e : args_arr)
			args.add(e);
		children.add(func);
		children.addAll(args);
	}
	
	public Call(Expr func, ArrayList<Expr> args){
		this.func = func;
		this.args.addAll(args);
	}
	
	public void add(Expr arg){
		args.add(arg);
		children.add(arg);
	}
	
	public void replace(Expr from, Expr to) {
		int i = 0;
		for (Expr arg : new ArrayList<Expr>(args)){
			if (arg.equals(from)){
				args.set(i, to);
				children.set(i+1, to);
			} else {
				arg.replace(from, to);
				children.set(i+1, arg);
			}
			i = i + 1;
		}
	}

	@Override
	public String label() {
		return "call["+func+"="+ args + "]";
	}
	
	@Override
	public Eseq lower(){
		Seq seq = new Seq();
		Call call = null;
		for (VisualizableTreeNode c : children){
			Eseq e = ((Expr)c).lower();
			if (call == null)
				call = new Call(e.expr);
			else
				call.add(e.expr);
			Stmt.add_and_lower(seq, (Seq) e.stmts);
		}
		call.tuple = tuple;
		Temp t = new Temp(new TempRegister()); // fresh
		seq.add(new Move(t, call, true));
		return new Eseq(t, seq);
	}
	
	public String prettyPrint(){
		String s = "Call("+func.prettyPrint()+", ";
		for (Expr e : args){
			s += e.prettyPrint()+", ";
		}
		return s.substring(0, s.length()-2)+")";
	}
	
	@Override
	public CallTile munch() {
		if (func instanceof Name){
			Name name = (Name)func;
			CallTile tile = new CallTile(name.label);
			tile.tuple = tuple;
			for (Expr arg : args){
				tile.add(arg.munch());
			}
			return tile;
		} else {
			Tile t = func.munch();
			CallTile tile = new CallArbitraryTile(t);
			tile.tuple = tuple;
			for (Expr arg : args){
				tile.add(arg.munch());
			}
			return tile;
		}
	}
}
