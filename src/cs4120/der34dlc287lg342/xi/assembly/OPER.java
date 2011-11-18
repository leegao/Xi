package cs4120.der34dlc287lg342.xi.assembly;

import java.util.HashSet;
import java.util.Hashtable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class OPER extends Assembly {
	public TempRegister dest;
	public TempRegister src[];
	Label jump_to;
	
	public OPER(String assem, TempRegister src[], TempRegister dest, Label to){
		this.assem = assem;
		this.dest = dest;
		this.src = src;
		
		preprocess();
		
		this.jump_to = to;
	}
	
	private void preprocess() {
		// check src for RV
		TempRegister rax = TempRegister.RV;
		int i = 0;
		
		for (TempRegister s : src){
			if (s != null && s.equals(rax)){
				assem = assem.replace("%s"+i, "%rax");
				src[i] = null;
			}
			
			i++;
		}
		
		// check dest for RV
		if (dest != null && dest.equals(rax)){
			assem = assem.replace("%d0", "%rax");
			dest = null;
		}
	}

	public OPER(String assem, TempRegister src[], TempRegister dest){
		this(assem, src, dest, null);
	}
	
	public OPER(String assem, TempRegister src1, TempRegister src2, Label to){
		this(assem, new TempRegister[]{src1, src2}, null, to);
	}
	
	public OPER(String assem, TempRegister src, TempRegister dest){
		this(assem, new TempRegister[]{src}, dest, null);
	}
	
	@Override
	public HashSet<TempRegister> use() {
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		for (TempRegister s : src)
			if (s != null)
				set.add(s);
		return set;
	}

	@Override
	public HashSet<TempRegister> def() {
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		if (dest != null)
			set.add(dest);
		return set;
	}

	@Override
	public Label jump() {
		return jump_to;
	}
	
	public String simple_assem(Hashtable<TempRegister, Integer> coloring){
		String assem = super.simple_assem(coloring);
		Pattern p = Pattern.compile("%s(\\d+)");
		Matcher m = p.matcher(assem);
		while (m.find()){
			int r = Integer.parseInt(m.group(1));
			assem = assem.replace("%s"+r, ""+machine_register(coloring, src[r]));
		}
		return assem.replace("%d0", ""+machine_register(coloring, dest));
	}
}
