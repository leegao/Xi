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
	
	
}
