package cs4120.der34dlc287lg342.xi.cfg;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Func;
import cs4120.der34dlc287lg342.xi.ir.Jump;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.translate.ConstantFolding;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class CFGConstantFolding {
	public static void foldConstants(CFG cfg){
		foldConstants(cfg, new HashSet<CFG>());
	}
	
	public static void foldConstants(CFG cfg, HashSet<CFG> seen){
		if (seen.contains(cfg))
			return;
		seen.add(cfg);
		Stmt stmt = cfg.ir;
		
		ArrayList<VisualizableTreeNode> arr = (ArrayList<VisualizableTreeNode>)stmt.children();
		// introspect stmt
		for (Field field : stmt.getClass().getDeclaredFields()){
			
			field.setAccessible(true);
			Object o;
			try {
				o = field.get(stmt);
			} catch (Exception e) {
				e.printStackTrace();
				continue;
			}
			
			if (o instanceof Expr){
				Expr expr = (Expr)o;
				Expr new_expr = ConstantFolding.foldConstants(expr);
				if (new_expr != null){
					try {
						field.set(stmt, new_expr);
					} catch (IllegalAccessException e) {
						e.printStackTrace();
					}
					int j = arr.indexOf(expr);
					if (j > -1)
						arr.set(j, new_expr);
				}
			} 
		}
		
		// check special cases
		if (stmt instanceof Cjump){
			Cjump cjump = (Cjump)stmt;
			if (cjump.condition instanceof Const){
				long v = ((Const)cjump.condition).value;
				if (v == 0){
					// if false 
					// replace with jump(iffalse) aka, go to the next statement
//					Jump jump = new Jump(cjump.iffalse);
//					cfg.ir = jump;
//					cfg.child2 = null;
					for (CFG prev : cfg.pred()){
						if (prev.child1.equals(cfg)){
							prev.child1 = cfg.child1;
						} else {
							prev.child2 = cfg.child1;
						}
					}
					cfg.child1.parents = cfg.parents;
				}else{
					// if true 
					// replace with jump(true) jump to child2
//					Jump jump = new Jump(cjump.to);
//					cfg.ir = jump;
//					cfg.child1 = cfg.child2;
//					cfg.child2 = null;
					
					for (CFG prev : cfg.pred()){
						if (prev.child1.equals(cfg)){
							prev.child1 = cfg.child2;
						} else {
							prev.child2 = cfg.child2;
						}
					}
					cfg.child2.parents = cfg.parents;
				}
			}
		}
		
		for (CFG next : cfg.succ()){
			foldConstants(next, seen);
		}
	}
}
