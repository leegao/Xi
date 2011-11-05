package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class CallTile extends Tile{
	public Label name;
	public ArrayList<Tile> args;
	public static String[] registers = {"", ""};
	public CallTile(Label name){
		this.name = name;
		args = new ArrayList<Tile>();
	}
	
	public void add(Tile tile){
		args.add(tile);
	}
	
	public String att(){
		String asm = "";
		int i = 0;
		for (Tile arg : args){
			asm += arg.att();
			if (i < 6){
				asm += "movq "+arg.out+", "+registers[i++]+"\n";
			} else {
				asm += "pushq "+arg.out+"\n";
			}
		}
		asm += "call "+name;
		return asm;
	}
}
