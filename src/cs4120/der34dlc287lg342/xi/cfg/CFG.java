package cs4120.der34dlc287lg342.xi.cfg;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.Arg;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Func;
import cs4120.der34dlc287lg342.xi.ir.Jump;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class CFG {
	public ArrayList<CFG> parents;
	public CFG child1, child2;
	public static int guid = 0;
	public int id;
	
	public HashSet<Expr> out_available;
	HashSet<TempRegister> use, def;
	
	public Stmt ir;
	public HashSet<TempRegister> in_live;
	public HashSet<Move> out_copy;
	
	public CFG(Stmt ir){
		parents = new ArrayList<CFG>();
		child1 = null;
		child2 = null;
		out_available = new HashSet<Expr>();
		out_copy = new HashSet<Move>();
		in_live = new HashSet<TempRegister>();
		
		this.use = use(ir);
		this.def = def(ir);
		
		this.ir = ir;
		id = guid++;
	}
	
	public static HashSet<TempRegister> def(Stmt ir){
		HashSet<TempRegister> in_def = new HashSet<TempRegister>();
		
		if (ir instanceof Move){
			Move mov = (Move)ir;
			if (mov.dest instanceof Temp){
				in_def.add(((Temp)mov.dest).temp);
			}
		} else if (ir instanceof Arg){
			Arg arg = (Arg)ir;
			in_def.add(arg.r);
		}
		
		return in_def;
	}
	
	public static HashSet<TempRegister> use(Stmt ir){
		HashSet<TempRegister> in_use = new HashSet<TempRegister>();
		
		if (ir instanceof Move){
			Move mov = (Move)ir;
			if (mov.dest instanceof Mem){
				Expr e1 = ((Mem)mov.dest).expr;
				Expr e2 = mov.val;
				in_use.addAll(use(e1));
				in_use.addAll(use(e2));
			} else {
				in_use.addAll(use(mov.val));
			}
		} else if (ir instanceof Cjump){
			Cjump cjump = (Cjump)ir;
			in_use.addAll(use(cjump.condition));
		} else if (ir instanceof Exp){
			Exp exp = (Exp)ir;
			in_use.addAll(use(exp.expr));
		}
		
		return in_use;
	}
	
	public static HashSet<TempRegister> use(Expr ir){
		HashSet<TempRegister> in_use = new HashSet<TempRegister>();
		
		for (Field f : ir.getClass().getDeclaredFields()){
			try{
				f.setAccessible(true);
				Object o = f.get(ir);
				if (o instanceof TempRegister){
					in_use.add((TempRegister) o);
				}
			} catch (Exception e){}
		}
		
		for (VisualizableTreeNode e : ir.children()){
			in_use.addAll(use((Expr)e));
		}
		
		return in_use;
	}
	
	public ArrayList<CFG> succ(){
		ArrayList<CFG> succ = new ArrayList<CFG>();
		if (child1 != null)
			succ.add(child1);
		if (child2 != null)
			 succ.add(child2);
		return succ;
	}
	
	public ArrayList<CFG> pred(){
		return parents;
	}
	
	public void insert_before(CFG prev){
		prev.parents = parents;
		for (CFG last : pred()){
			if (last.child1.equals(this)){
				last.child1 = prev;
			} else {
				last.child2 = prev;
			}
		}
		prev.child1 = this;
		this.parents = new ArrayList<CFG>();
		this.parents.add(prev);
	}
	
	public String simpleName(CFG node){
		if (node == null)
			return "";
		else if (node.ir instanceof LabelNode){
			LabelNode label = (LabelNode)node.ir;
			return ""+label.label;
		}
		return node.ir.getClass().getSimpleName();
	}
	
	public String toString_(HashSet<CFG> seen){
		if (seen.contains(this))
			return "";
		else
			seen.add(this);
		
		String prev = "";
		for (CFG parent : parents){
			prev += parent.ir.getClass().getSimpleName()+", ";
		}
		String next = simpleName(child1) + ", "+simpleName(child2);
		
		String str = "["+ir.prettyPrint()+"]\n\tparents: "+prev+"\n\tchildren: "+next +"\n";
		
		return str+(child1 == null ? "":child1.toString_(seen))+(child2 == null ? "" :child2.toString_(seen));
	}
	
	public String toString(){
		//return toString_(new HashSet<CFG>());
		return ir.prettyPrint();
	}
	
	public String dot_edge_(HashSet<CFG> seen){
		if (seen.contains(this))
			return "";
		else
			seen.add(this);
		String str = "";
		if (pred().isEmpty()){
			str += "\tstart -> n"+id+"\n";
		}
		str += "\t"+"n"+id+" [label=\""+ir.prettyPrint()+"\\navailable_out: " + this.out_available + "\"]\n";

		for (CFG child : succ()){
			str += "\t"+"n"+id+" -> "+"n"+child.id+"\n";
		}
		
		if (succ().isEmpty()){
			str += "\tn"+id+" -> return\n";
		}

		return str+(child1 == null ? "":child1.dot_edge_(seen))+(child2 == null ? "" :child2.dot_edge_(seen));
	}
	
	public String dot_edge(){
		return "digraph G{\n"+dot_edge_(new HashSet<CFG>())+"}";
	}
	
	public static CFG cfg_first_pass(Func ir, HashMap<Label, CFG> jumps){
		CFG prev = null, current = null;
		CFG root = null;
		
		//HashMap<Label, CFG> jumps = new HashMap<Label, CFG>();
		
		for (VisualizableTreeNode node : ir.children){
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
	
	public static CFG traverse(CFG node, HashMap<Label, CFG> jumps, HashSet<CFG> memoize){
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
			if (next != null){
				next.parents.add(node);
				node.child2 = traverse(next, jumps, memoize);
			}
			
			// update child1 as well
			traverse(node.child1, jumps, memoize);
		} else {
			traverse(node.child1, jumps, memoize);
		}
		
		return node;
	}
	
	public static CFG cfg(Func ir){
		HashMap<Label, CFG> jumps = new HashMap<Label, CFG>();
		HashSet<CFG> memoize = new HashSet<CFG>();
		CFG first_pass = cfg_first_pass(ir, jumps);
		
		// single DPS to traverse and alter the connection of the graphs
		CFG second_pass = traverse(first_pass, jumps, memoize);
		
		return second_pass;
	}
	
	public static HashSet intersect(HashSet a, HashSet b){
		HashSet set = new HashSet();
		for (Object o : a){
			if (b.contains(a)){
				set.add(o);
			}
		}
		return set;
	}
	
	public static HashSet union(HashSet a, HashSet b){
		HashSet set = new HashSet();
		set.addAll(a);
		set.addAll(b);
		return set;
	}
}