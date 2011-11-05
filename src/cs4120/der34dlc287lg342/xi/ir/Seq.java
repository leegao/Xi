package cs4120.der34dlc287lg342.xi.ir;

import java.util.List;

import cs4120.der34dlc287lg342.xi.tiles.SeqTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class Seq extends Stmt {
	
	public Seq(Stmt... seq){
		super();
		for (Stmt e : seq)
			children.add(e);
	}
	
	public Seq(List<Stmt> seq){
		children.addAll(seq);
	}
	
	public void add(Stmt stmt){
		children.add(stmt);
	}
	
	public void addAll(Seq seq){
		children.addAll(seq.children);
	}
	
	@Override
	public Seq lower(){
		Seq seq = new Seq();
		add_and_lower(seq, this);
		return seq;
	}
	
	public String toString(){
		String str = "";
		for (VisualizableTreeNode child : children){
			str += child.toString() + "\n";
		}
		return str;
	}
	
	public String prettyPrint(){
		String str = "";
		for (VisualizableTreeNode child : children){
			str += ((Stmt)child).prettyPrint() + "\n";
		}
		return str;
	}
	
	@Override
	public Tile munch(){
		SeqTile tiles = new SeqTile();
		for (VisualizableTreeNode s : children){
			Stmt stmt = (Stmt)s;
			tiles.add(stmt.munch());
		}
		return tiles;
	}
}