package cs4120.der34dlc287lg342.xi.cfg;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.Arg;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class CFG {
	public ArrayList<CFG> parents;
	public CFG child1, child2;
	public static int guid = 0;
	public int id;
	
	HashSet<TempRegister> use, def;
	HashSet<TempRegister> in_wl;
	public Stmt ir;
	public CFG(Stmt ir){
		parents = new ArrayList<CFG>();
		child1 = null;
		child2 = null;
		in_wl = new HashSet<TempRegister>();
		
		this.use = use(ir);
		this.def = def(ir);
		this.ir = ir;
		id = guid++;
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
		
		String str = "["+ir.prettyPrint()+"]\n\tparents: "+prev+"\n\tchildren: "+next+"\n\tuses: "+use+"\n\tdefs: "+def+"\n\tin_wl: " + in_wl +"\n";
		
		return str+(child1 == null ? "":child1.toString_(seen))+(child2 == null ? "" :child2.toString_(seen));
	}
	
	public String toString(){
		return toString_(new HashSet<CFG>());
	}
	
	public String dot_edge(HashSet<CFG> seen){
		if (seen.contains(this))
			return "";
		else
			seen.add(this);
		String str = "";
		if (pred().isEmpty()){
			str += "\tstart -> n"+id+"\n";
		}
		str += "\t"+"n"+id+" [label=\""+ir.prettyPrint()+"\\nuse: "+use+"\\ndef: "+def+"\\nin_wl: "+in_wl+"\"]\n";

		for (CFG child : succ()){
			str += "\t"+"n"+id+" -> "+"n"+child.id+"\n";
		}
		
		if (succ().isEmpty()){
			str += "\tn"+id+" -> return\n";
		}

		return str+(child1 == null ? "":child1.dot_edge(seen))+(child2 == null ? "" :child2.dot_edge(seen));
	}
}
