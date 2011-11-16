package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

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
	
	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.addAll(left.att());
		asm.addAll(right.att());
		asm.add(new OPER("cmpq %s0, %s1", new TempRegister[]{right.out, left.out}, null));
		asm.add(new OPER(jump()+" %to", new TempRegister[]{}, null, to));
		return asm;
	}
}
