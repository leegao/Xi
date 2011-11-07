package cs4120.der34dlc287lg342.xi.tiles.naive_asm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import cs4120.der34dlc287lg342.xi.tiles.FuncTile;
import cs4120.der34dlc287lg342.xi.tiles.SeqTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class Assemble {
	SeqTile main;
	
	String calleesaves[] = {"rbx","r12","r13"};
	
	public Assemble(SeqTile main){
		this.main = main;
	}
	
	public String map_register(int i, String r){
		if (r.equals(TempRegister.FP.toString())){
			return "%rbp";
		} else if (r.equals(TempRegister.RV.toString())){
			return "%rax";
		}
		// rdi, rsi, rdx, rcx, r8, and r9
		// then %rbp-i*8
		if (i < calleesaves.length){
			return "%"+calleesaves[i];
		}
		return -(i-calleesaves.length+1)*8+"(%rbp)";
	}
	
	public String allocate_registers(String asm){
		Pattern p = Pattern.compile("%r\\(.+?\\)");
		Matcher m = p.matcher(asm);
		HashMap<String, String> map = new HashMap<String, String>();
		
		while (m.find()){
			String r = m.group();
			if (!map.containsKey(r)){
				int i = map.size();
				String register = map_register(i, r);
				//System.out.println(r+" -> "+register);
				map.put(r, register);
				asm = asm.replace(r, register);
			}
		}
		
		String prologue = "pushq %rbp\n" +
					      "movq %rsp, %rbp\n" +
					      "subq $" + (map.size()-6)*8 + ", %rsp\n" + 
					      "pushq %r14\n" + // clobbered
					      "pushq %r15\n"; // shuttle
		for (String callee_reg : calleesaves) prologue += "pushq %"+callee_reg+"\n";
		
		String epilogue = "";
		for (int i = calleesaves.length-1; i >= 0; i--) epilogue = "popq %"+calleesaves[i]+"\n";
		epilogue += "popq %r15\npopq %r14\naddq $"+(map.size()-6)*8 + ", %rsp\nmovq %rbp, %rsp\npopq %rbp\n";
		
		return prologue + asm + epilogue;
	}
	
	public void att(){
		for (Tile tile : main.tiles){
			if (tile instanceof FuncTile){
				FuncTile func = (FuncTile)tile;
				String asm = func.att();
				asm = ".globl "+func.name+"\n"+
					  func.name+":\n\t"+
					  allocate_registers(asm).replace("\n", "\n\t");
				System.out.println(asm);
			}
		}
	}
}
