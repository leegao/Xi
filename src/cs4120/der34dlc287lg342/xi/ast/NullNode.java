package cs4120.der34dlc287lg342.xi.ast;

import edu.cornell.cs.cs4120.xi.Position;

public class NullNode extends ExpressionNode {
	public Position position;
	public NullNode(Position pos){
		this.position = pos;
	}
}
