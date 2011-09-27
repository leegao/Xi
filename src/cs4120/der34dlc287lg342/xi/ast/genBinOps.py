def generate(name):
  name = name.title()
  a = """package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class Bin%sNode implements AbstractSyntaxNode {

    public AbstractSyntaxNode e1, e2;
    protected Position position;
    private ArrayList<VisualizableTreeNode> children; // cached so revisit won't be slow
    
    public Bin%sNode(AbstractSyntaxNode e1, AbstractSyntaxNode e2, Position position){
        this.e1 = e1;
        this.e2 = e2;
        children = new ArrayList<VisualizableTreeNode>();
        children.add(e1);
        children.add(e2);
        this.position = position;
    }
    @Override
    public Position position() {
        return position;
    }

    @Override
    public Iterable<VisualizableTreeNode> children() {
        return children;
    }

    @Override
    public String label() {
        return e1.label() + " %s " + e2.label();
    }

}"""%(name, name, name)
  b = open("Bin%sNode.java"%name, "w")
  b.write(a)
  b.close()
  
x = "AND | OR | EQUAL | NOT_EQUAL | LEQ | GEQ | LT | GT | PLUS | MINUS | TIMES | DIVIDE | MODULO"
b = [a.strip() for a in x.split("|")]
map(generate, b)