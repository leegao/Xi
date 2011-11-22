package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class CSE {
	CFG node;
	ArrayList<CFG> worklist;
	public CSE(CFG node){
		this.node = node;
		worklist = new ArrayList<CFG>();
		make_worklist(node, new HashSet<CFG>());
		
//		for (Expr e : ce){
//			search(node, e, new HashSet<CFG>(), new HashSet<CFG>());
//		}
	}
	
	public void make_worklist(CFG node, HashSet<CFG> seen){
		if (node == null) return;
		if (seen.contains(node)) return;
		seen.add(node);
		
		worklist.add(node);
		
		for (CFG next : node.succ())
			make_worklist(next, seen);
		
	}
	
	public void analyze(){
		// one step for now
		while (!worklist.isEmpty()){
			CFG node = worklist.get(0);
			worklist.remove(0);
			
			// check available exprs
			HashSet<Expr> exprs_out = new HashSet<Expr>(node.out_available);
			for (Expr e : exprs_out){
				ArrayList<CFG> chain = new ArrayList<CFG>();
				make_chain(node, e, chain);
				if (chain.size() > 1){
					TempRegister r = new TempRegister();
					for (CFG el : chain){
						el.ir.replace(e, new Temp(r));
						el.out_available.remove(e);
					}
					node.insert_before(new CFG(new Move(new Temp(r), e)));
				}
			}
		}
	}
	
	public void make_chain(CFG node, Expr e, ArrayList<CFG> chain){
		if (node.ir.contains(e)){
			chain.add(node);
		}
		
		if (node.out_available.contains(e))
			for (CFG next : node.succ()){
				make_chain(next, e, chain);
			}
	}
	
//	public void search(CFG node, Expr e, HashSet<CFG> seen, HashSet<CFG> seen2){
//		if (seen.contains(node)) return;
//		seen.add(node);
//		
//		for (CFG next : node.succ())
//			search(next, e, seen, seen2);
//		
//		if (node.ir.contains(e)){
//			//System.out.println(node);
//			backtrace(node, e, seen2, 0);
//		}
//	}
//	
//	public void backtrace(CFG node, Expr e, HashSet<CFG> seen2, int n){
//		if (seen2.contains(node)) return;
//		seen2.add(node);
//		
//		if (!node.ir.contains(e) && !node.out_available.contains(e)){
//			System.out.println(n);
//			return;
//		}
//		
//		for (CFG next : node.pred())
//			backtrace(next, e, seen2, n+1);
//		
//		System.out.println(node);
//	}
}
