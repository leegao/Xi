package cs4120.der34dlc287lg342.xi.ir;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.cfg.CFG;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.tiles.FuncTile;
import cs4120.der34dlc287lg342.xi.tiles.SeqTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class Func extends Seq {
	public Label name;
	public Func(Label name_node, Stmt... stmts){
		super(stmts);
		name = name_node;
	}
	
	public String prettyPrint(){
		String str = "[Func:"+name+"]\n";
		for (VisualizableTreeNode child : children){
			str += ((Stmt)child).prettyPrint() + "\n";
		}
		return str;
	}
	
	@Override
	public Tile munch(){
		FuncTile tiles = new FuncTile(name);
		for (VisualizableTreeNode s : children){
			Stmt stmt = (Stmt)s;
			tiles.add(stmt.munch());
		}
		return tiles;
	}
	
	public CFG cfg_first_pass(HashMap<Label, CFG> jumps){
		CFG prev = null, current = null;
		CFG root = null;
		
		//HashMap<Label, CFG> jumps = new HashMap<Label, CFG>();
		
		for (VisualizableTreeNode node : children){
			Stmt stmt = (Stmt)node;
			if (root == null){
				root = new CFG(stmt);
				current = root;
			} else {
				current = new CFG(stmt);
			}
			
			if (prev != null){
				current.parents.add(prev);
				prev.child1 = current;
			}
			
//			if (stmt instanceof Jump){
//				jumps.put(((Jump)stmt).label, current);
//			} else if (stmt instanceof Cjump){
//				jumps.put(((Cjump)stmt).to, current);
//			}
			if (stmt instanceof LabelNode){
				jumps.put(((LabelNode)stmt).label, current);
			}

			prev = current;
		}
		
		return root;
	}
	
	public CFG traverse(CFG node, HashMap<Label, CFG> jumps, HashSet<CFG> memoize){
		if (node == null){
			return null;
		}
		
		// dynamic memoization
		if (memoize.contains(node))
			return node;
		else
			memoize.add(node);
		
		if (node.ir instanceof Jump) {
			Label to = ((Jump)node.ir).label;
			CFG next = jumps.get(to);
			
			// remove child1.parent that is equal to current
			node.child1.parents.remove(node);
			
			// make child1 next
			next.parents.add(node);
			node.child1 = traverse(next, jumps, memoize);
		} else if (node.ir instanceof Cjump) {
			Label to = ((Cjump)node.ir).to;
			CFG next = jumps.get(to);
			
			// make child2 next
			next.parents.add(node);
			node.child2 = traverse(next, jumps, memoize);
			
			// update child1 as well
			traverse(node.child1, jumps, memoize);
		} else {
			traverse(node.child1, jumps, memoize);
		}
		
		return node;
	}
	
	public CFG cfg(){
		HashMap<Label, CFG> jumps = new HashMap<Label, CFG>();
		HashSet<CFG> memoize = new HashSet<CFG>();
		CFG first_pass = cfg_first_pass(jumps);
		
		// single DPS to traverse and alter the connection of the graphs
		CFG second_pass = traverse(first_pass, jumps, memoize);
		
		return second_pass;
	}
}
