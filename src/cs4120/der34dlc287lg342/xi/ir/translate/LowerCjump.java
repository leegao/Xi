package cs4120.der34dlc287lg342.xi.ir.translate;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Seq;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class LowerCjump {
	Seq seq;
	public LowerCjump(Seq seq){
		this.seq = seq;
	}
	
	public Seq translate(){
		Seq ret = new Seq();
		// Go through the seq
		ArrayList<VisualizableTreeNode> arr = (ArrayList<VisualizableTreeNode>)ret.children();
		return ret;
	}
}
