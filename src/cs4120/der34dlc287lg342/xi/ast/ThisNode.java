package cs4120.der34dlc287lg342.xi.ast;

import edu.cornell.cs.cs4120.xi.Position;

public class ThisNode extends ExpressionNode {
	public Position position;
	public ThisNode(Position pos){
		this.position = pos;
	}
}
