package cs4120.der34dlc287lg342.xi.ir;

import java.lang.reflect.Field;
import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public abstract class Stmt implements VisualizableTreeNode{
	ArrayList<VisualizableTreeNode> children;
	public Stmt(){
		children = new ArrayList<VisualizableTreeNode>();
	}
	
	@Override
	public Iterable<VisualizableTreeNode> children() {
		return children;
	}
	
	@Override
	public String label() {
		String s = this.getClass().getSimpleName();
		for (Field f : this.getClass().getDeclaredFields()){
			Object o;
			s += "["+f.getName();
			try {
				o = f.get(this);
				if (!(o instanceof ArrayList<?> || o instanceof VisualizableTreeNode)){
					s += ":"+o.toString() + "]";
				} else 
					s += "]";
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return s;
	}
	
	public static void add_and_lower(Seq dest, Seq src){
		for (VisualizableTreeNode c : src.children){
			Seq s = ((Stmt)c).lower();
			if (c instanceof Func){
				Func f = new Func(((Func)c).name);
				f.addAll(s);
				dest.children.add(f);
			}else 
				dest.children.addAll(s.children);
		}
	}
	
	public Seq lower(){
		return new Seq(this);
	}
	
	@Override
	public String toString(){
		String s = this.getClass().getSimpleName();
		for (Field f : this.getClass().getDeclaredFields()){
			if (f.getName().equals("primitive") || f.getName().equals("iffalse"))
				continue;
			Object o;
			s += "["+f.getName();
			try {
				o = f.get(this);
				if (!(o instanceof ArrayList<?>)){
					s += ":"+o.toString() + "]";
				} else 
					s += "]";
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return s;
	}
	
	public String prettyPrint(){
		String s = "["+this.getClass().getSimpleName()+"]";
		if (s.equals("[LabelNode]"))
			s = "[Label]";
		for (Field f : this.getClass().getDeclaredFields()){
			if (f.getName().equals("primitive") || f.getName().equals("iffalse"))
				continue;
			Object o;
			try {
				o = f.get(this);
				if (!(o instanceof ArrayList<?>)){
					if (o instanceof Expr)
						s += " "+f.getName()+":"+((Expr) o).prettyPrint() + ",";
					else if (o instanceof Stmt)
						s += " "+f.getName()+":"+((Stmt) o).prettyPrint() + ",";
					else
						s += " "+f.getName()+":"+o.toString() + ",";
				}
			} catch (Exception e) {}
		}
		if (this.getClass().getDeclaredFields().length>0)
			s = s.substring(0, s.length()-1);
		return s;
	}
}
