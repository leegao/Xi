package cs4120.der34dlc287lg342.xi.ir;

import java.lang.reflect.Field;
import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.tiles.Tile;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public abstract class Expr implements VisualizableTreeNode {
	ArrayList<VisualizableTreeNode> children;
	public Expr(){
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
	
	@Override
	public String toString(){
		String s = this.getClass().getSimpleName();
		for (Field f : this.getClass().getDeclaredFields()){
			Object o;
			s += "["+f.getName();
			try {
				o = f.get(this);
				if (!(o instanceof ArrayList<?> || o == null)){
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
		return label();
	}
	
	public Eseq lower(){
		return new Eseq(this, new Seq());
	}
	
	public Tile munch() {
		return null;
	}
	
	@Override
	public boolean equals(Object that){
		if (that instanceof Expr){
			for (Field f : this.getClass().getDeclaredFields()){
				Object o1, o2;
				try {
					o1 = f.get(this);
					o2 = f.get(that);
					
					if (o1 instanceof ArrayList<?>){
						ArrayList<?> a1 = (ArrayList<?>)o1, a2 = (ArrayList<?>)o2;
						for (int i = 0; i < a1.size(); i++){
							if (!a1.get(i).equals(a2.get(i))) return false;
						}
					} else {
						if (!o1.equals(o2)) return false;
					}
				} catch (Exception e) {
					return false;
				}
			}
			return true;
		}
		return false;
	}

	public void replace(Expr from, Expr to) {
		ArrayList<VisualizableTreeNode> todo = new ArrayList<VisualizableTreeNode>(children);
		for (Field f : this.getClass().getDeclaredFields()){
			try{
				f.setAccessible(true);
				Object o = f.get(this);
				if (o instanceof Expr){
					Expr expr = (Expr)o;
					if (expr.equals(from)){
						f.set(this, to);
						int i = children.indexOf(expr);
						if (i != -1){
							children.set(i, to);
						}
					} else {
						expr.replace(from, to);
					}
					todo.remove(expr);
				}
			} catch (Exception e){
				//pass
			}
		}
		for (VisualizableTreeNode node : todo){
			Expr next = (Expr)node;
			if (next.equals(from)){
				int i = children.indexOf(next);
				if (i != -1){
					children.set(i, to);
				}
			} else {
				next.replace(from, to);
			}
		}
	}

	public boolean contains(Expr from) {
		ArrayList<VisualizableTreeNode> todo = new ArrayList<VisualizableTreeNode>(children);
		for (Field f : this.getClass().getDeclaredFields()){
			try{
				f.setAccessible(true);
				Object o = f.get(this);
				if (o instanceof Expr){
					Expr expr = (Expr)o;
					if (expr.equals(from)){
						return true;
					} else {
						if (expr.contains(from)) return true;
					}
					todo.remove(expr);
				}
			} catch (Exception e){
				//pass
			}
		}
		for (VisualizableTreeNode node : todo){
			Expr next = (Expr)node;
			if (!next.equals(from)){
				if (next.contains(from)) return true;
			} else {
				return true;
			}
		}
		return false;
	}
}
