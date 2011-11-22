package cs4120.der34dlc287lg342.xi.cfg;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map.Entry;

import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class AvailableExpressions {
	public ArrayList<CFG> worklist;
	public HashSet<Expr> universal;
	public Hashtable<CFG, HashSet<Expr>> map;
	public Hashtable<CFG, HashSet<Expr>> expr_map;
	public Hashtable<CFG, TempRegister> kill_map;
	public HashSet<CFG> kill_mem;
	CFG node;
	
	public AvailableExpressions(CFG node){
		this.node = node;
		worklist = new ArrayList<CFG>();
		universal = new HashSet<Expr>();
		map = new Hashtable<CFG, HashSet<Expr>>();
		expr_map = new Hashtable<CFG, HashSet<Expr>>();
		kill_map = new Hashtable<CFG, TempRegister>();
		generate_worklist(this.node, new HashSet<CFG>());
		
		// don't cache kill set
		for (CFG cfg : worklist){
			// if is a move
			if (cfg != node){
				cfg.out_available = new HashSet<Expr>(universal);
			}
		}
	}

	private void generate_worklist(CFG node, HashSet<CFG> seen) {
		if (seen.contains(node)){
			return;
		}
		seen.add(node);
		HashSet<Expr> exprs = gen_exprs(node);
		
		worklist.add(node);
		expr_map.put(node, kill(exprs, node));
		
		if(node.child1 != null) 
			generate_worklist(node.child1, seen);
		
		if (node.child2 != null) 
			generate_worklist(node.child2, seen);
		
		
	}
	
	public void analyze(){
		while (!worklist.isEmpty()) {
			CFG node = worklist.get(0);
			worklist.remove(0);
			boolean changed = false;
			// each iteration, recompute in with a new cache
			Hashtable<CFG, HashSet<Expr>> seen = new Hashtable<CFG, HashSet<Expr>>();
			seen.put(this.node, new HashSet<Expr>());
			
			HashSet<Expr> intersection = out(node, seen);
			changed = !intersection.equals(node.out_available);
			
			if (changed) {
				node.out_available = intersection;
				
				for (CFG next : node.succ()) {
					if (!worklist.contains(next)) {
						worklist.add(next);
					}
				}
			}
		}
	}
	
	public HashSet<Expr> out(CFG n, Hashtable<CFG, HashSet<Expr>> seen){
		if (seen.containsKey(n)){
			return seen.get(n);
		}
		HashSet<Expr> gen = new HashSet<Expr>();
		if (expr_map.containsKey(n))
			gen.addAll(expr_map.get(n));
		HashSet<Expr> intersect = null;
		for (CFG p : n.pred()){
			HashSet<Expr> cur = kill(p.out_available, n);
			if (intersect == null) 
				intersect = cur;
			else
				intersect = CFG.intersect(intersect, cur);
		}
		gen.addAll(intersect);
		seen.put(n, gen);
		
		return gen;
	}
	
	public HashSet<Expr> gen_exprs(CFG node){
		Stmt stmt = node.ir;
		HashSet<Expr> exprs = new HashSet<Expr>();
		
		if (stmt instanceof Cjump){
			return exprs;
		} else if (stmt instanceof Move){
			Move move = (Move)stmt;
			exprs.addAll(gen_exprs(move.val));
			if (move.dest instanceof Temp)
				kill_map.put(node, ((Temp)move.dest).temp);
		} else {
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
		} else if (expr instanceof Name){
			return exprs;
		} else if (expr instanceof Temp){
			return exprs;
		} else if (expr instanceof Const){
			return exprs;
		}
		
		
		for (Field f : expr.getClass().getDeclaredFields()){
			try {
				f.setAccessible(true);
				Object o = f.get(expr);
				if (o instanceof Expr){
					Expr e = (Expr)o;
					exprs.addAll(gen_exprs(e));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		exprs.add(expr);
		universal.add(expr);
		return exprs;
	}
	
	HashSet<Expr> kill(HashSet<Expr> set, CFG node){
		HashSet<Expr> ret = new HashSet<Expr>();
		if (kill_map.containsKey(node)){
			TempRegister r = kill_map.get(node);
			for (Expr e : set){
				if (!uses(e, r)){
					ret.add(e);
				}
			}
		}
		
		return ret;
	}
	
	static Hashtable<Expr, HashSet<TempRegister>> memoize_uses = new Hashtable<Expr, HashSet<TempRegister>>();
	boolean uses(Expr e, TempRegister r){
		if (!memoize_uses.containsKey(e))
			uses_(e, new HashSet<TempRegister>());
		return memoize_uses.get(e).contains(r);
	}

	private void uses_(Expr e, HashSet<TempRegister> hashSet) {
		HashSet<TempRegister> cur = new HashSet<TempRegister>();
		if (e instanceof Temp){
			cur.add(((Temp)e).temp);
		} else{
			for (VisualizableTreeNode child : e.children()){
				Expr echild = (Expr)child;
				uses_(echild, cur);
			}
		}
		memoize_uses.put(e, cur);
		hashSet.addAll(cur);
		return;
	}
}

