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
				if (!(o instanceof ArrayList || o instanceof VisualizableTreeNode)){
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
	
	public void add_and_lower(Seq dest, Seq src){
		for (VisualizableTreeNode c : src.children){
			Seq s = ((Stmt)c).lower();
			dest.children.addAll(s.children);
		}
	}
	
	public Seq lower(){
		return new Seq(this);
	}
}
