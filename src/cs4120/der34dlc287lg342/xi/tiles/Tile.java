package cs4120.der34dlc287lg342.xi.tiles;

import java.lang.reflect.Field;
import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public abstract class Tile {
	public TempRegister out;
	
	public ArrayList<Assembly> att(){
		// %r14 and %r15 are clobbered by default
		return null;
		//return ""+this.getClass().getSimpleName()+"\n";
	}

	public String out() {
		return ""+this.out;
	}
	
	public String toString(){
		String s = this.getClass().getSimpleName()+ " ";
		
		for (Field f : this.getClass().getFields()){
			try {
				f.setAccessible(true);
				Object o = f.get(this);
				s += f.getName()+":"+o+", ";
				
			} catch (Exception e){
				
			}
		}
		
		return "("+s+")";
	}
}
