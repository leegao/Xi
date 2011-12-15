package cs4120.der34dlc287lg342.xi.assembly;

import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.cfg.AssemblyCFG;
import cs4120.der34dlc287lg342.xi.cfg.InterferenceGraph;
import cs4120.der34dlc287lg342.xi.cfg.LivenessWorklist;
import cs4120.der34dlc287lg342.xi.cfg.Register;
import cs4120.der34dlc287lg342.xi.cfg.Rewrite;
import cs4120.der34dlc287lg342.xi.tiles.FuncTile;
import cs4120.der34dlc287lg342.xi.tiles.SeqTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class Assembler {
	SeqTile main;
	public Assembler(SeqTile main){
		this.main = main;
	}
	
	public String att(){
		String att = "";
		for (Tile tile : main.tiles){
			if (tile instanceof FuncTile){
				
				FuncTile func = (FuncTile)tile;
				//System.out.println(func.name);
				ArrayList<Assembly> instrs = func.att();
				AssemblyCFG cfg = AssemblyCFG.cfg(instrs);
				
				LivenessWorklist wl = new LivenessWorklist(cfg);
				wl.analyze();
				
				InterferenceGraph g = new InterferenceGraph(cfg);
				
				int n = 0;
				while (!g.spills.isEmpty()){
					Rewrite rewrite = new Rewrite(instrs, g.spills, n);
					n += g.spills.size();
					instrs = rewrite.rewrite();
					cfg = AssemblyCFG.cfg(instrs);
					wl = new LivenessWorklist(cfg);
					wl.analyze();
					g = new InterferenceGraph(cfg);
				}
				
				//if (func.name.name.contains("main"))
					//System.out.println(cfg.dot_edge(new HashSet<AssemblyCFG>()));
				
				int aligned_stack = (n+1)*8;
				if (aligned_stack % 16 != 0) aligned_stack += 8;
				
				String prologue = "pushq %rbp\n" +
							      "movq %rsp, %rbp\n" +
							      "subq $" + aligned_stack + ", %rsp\n";
				for (String callee_reg : Register.callee) prologue += "pushq "+callee_reg+"\n";
				
				String epilogue = "";
				for (int i = Register.callee.length-1; i >= 0; i--) epilogue += "popq "+Register.callee[i]+"\n";
				epilogue += "addq $"+ aligned_stack + ", %rsp\nmovq %rbp, %rsp\npopq %rbp\nret\n";
				
				String function = prologue + RegAlloc.allocate(instrs, g.coloring, epilogue);
				
				String asm = "";//func.att();
				asm = ".globl "+func.name+"\n"+
					  func.name+":\n\t";
				asm += function.replace("\n", "\n\t");
				att += (asm+"\n");
			}else{
				ArrayList<Assembly> instrs = tile.att();
				if (instrs != null){
					for (Assembly instr : instrs){
						att += (instr.assem+"\n");
					}
				} else {
					System.out.println("not implemented: "+tile);
				}
			}
		}
		
		return (".att_syntax prefix\n.text\n"+att);
	}
}
