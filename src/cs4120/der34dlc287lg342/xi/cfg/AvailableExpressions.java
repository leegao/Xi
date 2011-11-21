package cs4120.der34dlc287lg342.xi.cfg;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Hashtable;

import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Stmt;

public class AvailableExpressions {
	public ArrayList<CFG> worklist;
	public HashSet<Expr> universal;
	public Hashtable<CFG, Object> map;
	public Hashtable<CFG, HashSet<Expr>> expr_map;
	CFG node;
	
	public AvailableExpressions(CFG node){
		this.node = node;
		worklist = new ArrayList<CFG>();
		universal = new HashSet<Expr>();
		map = new Hashtable<CFG, Object>();
		expr_map = new Hashtable<CFG, HashSet<Expr>>();
		generate_worklist(this.node, new HashSet<CFG>());
		//System.out.println(expr_map);
	}

	private void generate_worklist(CFG node, HashSet<CFG> seen) {
		if (seen.contains(node)){
			return;
		}
		seen.add(node);
		Stmt stmt = node.ir;
		expr_map.put(node, gen_exprs(stmt));
		
		if(node.child1 != null) 
			generate_worklist(node.child1, seen);
		
		if (node.child2 != null) 
			generate_worklist(node.child2, seen);
		
		worklist.add(node); 
	}
	
	public HashSet<Expr> gen_exprs(Stmt stmt){
		HashSet<Expr> exprs = new HashSet<Expr>();
		for (Field f : stmt.getClass().getDeclaredFields()){
			try {
				f.setAccessible(true);
				Object o = f.get(stmt);
				if (o instanceof Expr){
					Expr expr = (Expr)o;
					exprs.addAll(gen_exprs(expr));
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return exprs;
	}
	
	public HashSet<Expr> gen_exprs(Expr expr){
		HashSet<Expr> exprs = new HashSet<Expr>();
		// check no mem
		if (expr instanceof Mem){
			// don't add mem itself
			return gen_exprs(((Mem)expr).expr);
		} else if (expr instanceof Call){
			// don't add call itself
			Call call = (Call)expr;
			for (Expr e : call.args){
				exprs.addAll(gen_exprs(e));
			}
			return exprs;
		}
		exprs.add(expr);
		universal.add(expr);
		
		for (Field f : expr.getClass().getDeclaredFields()){
			try {
				f.setAccessible(true);
				Object o = f.get(expr);
				if (o instanceof Expr){
					Expr e = (Expr)o;
					exprs.addAll(gen_exprs(e));
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return exprs;
	}
}
