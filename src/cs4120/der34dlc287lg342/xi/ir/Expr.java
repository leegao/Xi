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
	
	
}
