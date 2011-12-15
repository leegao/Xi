package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class CallArbitraryTile extends CallTile {

	Tile tile;
	
	public CallArbitraryTile(Tile tile){
		super(null);
		this.tile = tile;
	}

	public ArrayList<Assembly> att(){
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		
		// we want to move to args after all the att()
		for (Tile arg : args){
			//System.out.println(args);
			ArrayList<Assembly> instrs = arg.att();
			if (instrs != null)
				asm.addAll(instrs);
		}
		
		int i = 0, n = args.size()-1;
		if (tuple != null){
			//asm += "movq " + tuple + ", %rdi\n";
			asm.add(new OPER("movq %s0, %rdi", tuple, null));
			i++;
		}
		
		for (Tile arg : args){
			if (i < 6){
					//asm += "movq "+ arg.out+", %"+TempRegister.free_registers[i++].name+"\n";
					asm.add(new OPER("movq %s0, %"+TempRegister.free_registers[i++].name, arg.out, null));
			} else {
				break;
			}
		}
		
		for (;n>=(tuple == null ? 6 : 5);n--){
			Tile arg = args.get(n);
			asm.add(new OPER("pushq %s0", arg.out, null));
		}
		
		asm.add(new OPER("callq *%s0", new TempRegister[]{tile.out}, null));
		if (args.size() > 6)
			for (int j = 0; j < args.size()-6; j++)
				//asm += "popq %rdx\n";
				asm.add(new OPER("popq %rsi", new TempRegister[]{}, null));
		out = TempRegister.RV;
		return asm;
	}
	
	
}
