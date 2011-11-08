package cs4120.der34dlc287lg342.xi.tiles;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.context.Label;

public class EqTile extends CjumpTile {
	int op;
	Tile left, right;
	public EqTile(int op, Tile left, Tile right, Label to){
		super(null, to);
		this.left = left;
		this.right = right;
		this.op = op;
	}
	
	public String jump(){
		switch(op){
		case Binop.EQ:
			return "je";
		case Binop.NE:
			return "jne";
		case Binop.GT:
			return "jg";
		case Binop.GE:
			return "jge";
		case Binop.LT:
			return "jl";
		case Binop.LE:
			return "jle";
		case Binop.UGE:
			return "jae";
			
		}
		return "je";
	}
	
	public String att(){
		String asm = "";
		asm += left.att();
		asm += right.att();
		asm += "movq "+left.out+", %r15\n";
		asm += "cmpq "+right.out+", %r15\n";
		asm += jump()+" "+to;
		return asm;
	}
}
