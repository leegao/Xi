package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class VariablePropagation {
	CFG node;
	ArrayList<CFG> worklist;
	public VariablePropagation(CFG node){
		this.node = node;
		worklist = new ArrayList<CFG>();
		make_worklist(node, new HashSet<CFG>());
	}
	
	public void make_worklist(CFG node, HashSet<CFG> seen){
		if (node == null) return;
		if (seen.contains(node)) return;
		seen.add(node);
		
		worklist.add(node);
		
		for (CFG next : node.succ())
			make_worklist(next, seen);
	}
	
	public HashSet<Move> in(CFG node){
		HashSet<Move> moves = new HashSet<Move>();
		for (CFG prev : node.pred()){
			moves.addAll(prev.out_copy);
		}
		return moves;
	}
	
	public void analyze(){
		// one step for now
		while (!worklist.isEmpty()){
			CFG node = worklist.get(0);
			worklist.remove(0);
			
			// check available exprs
			HashSet<Move> copies_in = in(node);
			for (Move move : copies_in){
				ArrayList<CFG> chain = new ArrayList<CFG>();
				make_chain(node, move, chain);
				if (chain.size() > 0){
					for (CFG el : chain){
						Expr from = move.dest, to = move.val;
						el.ir.replace(from, to);
					}
				}
			}
		}
	}
	
	public void make_chain(CFG node, Move move, ArrayList<CFG> chain){
		Temp copy = (Temp)move.dest;
		if (node.ir.contains(copy)){
			chain.add(node);
		}
		
		if (in(node).contains(move))
			for (CFG next : node.succ()){
				make_chain(next, move, chain);
			}
	}
}
