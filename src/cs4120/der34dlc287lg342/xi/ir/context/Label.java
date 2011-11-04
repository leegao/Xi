package cs4120.der34dlc287lg342.xi.ir.context;

public class Label {
	static public int global = 0;
	public int value;
	public String name;
	
	final public static Label alloc = new Label("_I_alloc_i");
	final public static Label outOfBounds = new Label("_I_outOfBounds_p");
	final public static Label dynamalloc = new Label("_I_c_dynamalloc_aiai");
	final public static Label internal_strdup = new Label("_I_c_internal_strdup_aii");
	final public static Label outofbounds_jump = new Label("error_outofbounds");
	
	public static Label get_outofbounds(IRContextStack stack){
		stack.abort = true;
		return outofbounds_jump;
	}
	
	public Label(String name){
		value = global++;
		this.name = name;
	}
	
	public Label(){
		this("");
		this.name = ""+value;
	}
	
	public int value(){
		return value;
	}
	
	@Override
	public String toString(){
		return name;
	}
}
