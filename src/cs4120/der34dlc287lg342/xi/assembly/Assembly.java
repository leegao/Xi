package cs4120.der34dlc287lg342.xi.assembly;

import java.util.HashSet;
import java.util.Hashtable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cs4120.der34dlc287lg342.xi.cfg.Register;
import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public abstract class Assembly {
	public String assem;
	public abstract HashSet<TempRegister> use();
	public abstract HashSet<TempRegister> def();
	public abstract Label jump();
	
//	switch(op){
//	case Binop.EQ:
//		return "je";
//	case Binop.NE:
//		return "jne";
//	case Binop.GT:
//		return "jg";
//	case Binop.GE:
//		return "jge";
//	case Binop.LT:
//		return "jl";
//	case Binop.LE:
//		return "jle";
//	case Binop.UGE:
//		return "jae";
//		
//	}
	
	public boolean is_jump(){
		return assem.startsWith("jmp");
	}
	
	public boolean is_cjump(){
		return assem.startsWith("je") || assem.startsWith("jne") || assem.startsWith("jg") || 
				assem.startsWith("jge") || assem.startsWith("jl") || assem.startsWith("jle") || 
				assem.startsWith("jae");
	}
	
	public String simple_assem(){
		return simple_assem(new Hashtable<TempRegister, Integer>());
	}
	public String simple_assem(Hashtable<TempRegister, Integer> coloring) {
		return assem.replace("%to", ""+jump());
	}
	public String machine_register(Hashtable<TempRegister, Integer> coloring, TempRegister r){
		if (r != null && r.equals(TempRegister.RV)){
			return "%rax";
		}
		if (r != null && coloring.containsKey(r)){
			return Register.callee[coloring.get(r)];
		}
		return ""+r;
	}
}
