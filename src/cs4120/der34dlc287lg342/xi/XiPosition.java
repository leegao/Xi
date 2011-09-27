package cs4120.der34dlc287lg342.xi;
import edu.cornell.cs.cs4120.xi.Position;


public class XiPosition implements Position {
	
	private int cols,cole,ls,le;
	private String file;
	
	public XiPosition(int cols, int cole, int ls, int le){
		this.cols = cols;
		this.cole = cole;
		this.ls = ls;
		this.le = le;
		// assume file is non-nullable
		this.file = "";
	}
	
	public XiPosition(String file, int cols, int cole, int ls, int le){
		this(cols, cole, ls, le);
		this.file = file;
	}
	
	@Override
	public int columnEnd() {
		// TODO Auto-generated method stub
		return cole;
	}

	@Override
	public int columnStart() {
		// TODO Auto-generated method stub
		return cols;
	}

	@Override
	public int lineEnd() {
		// TODO Auto-generated method stub
		return le;
	}

	@Override
	public int lineStart() {
		// TODO Auto-generated method stub
		return ls;
	}

	@Override
	public String unit() {
		// TODO Auto-generated method stub
		return file;
	}

	@Override
	public boolean equals(Object that){
		if (that instanceof Position){
			Position other = (Position)that;
			return other.unit() == unit() && 
				other.lineEnd() == lineEnd() && other.lineStart() == lineStart() &&
				other.columnEnd() == columnEnd() && other.columnStart() == columnStart();
		}
		return false;
	}
	
	@Override
	public String toString(){
		return String.format("(%d, %d, %d, %d)", cols, cole, ls, le);
	}
}
