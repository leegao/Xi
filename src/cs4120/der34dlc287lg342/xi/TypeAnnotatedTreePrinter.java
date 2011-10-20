package cs4120.der34dlc287lg342.xi;

import edu.cornell.cs.cs4120.util.TreePrinter;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

import java.io.IOException;
import java.io.OutputStream;

import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ast.BlockNode;

import polyglot.util.CodeWriter;
import polyglot.util.OptimalCodeWriter;

/**
 * An {@linkplain TreePrinter} implementation designed to print ASTs through a
 * provided {@link CodeWriter}.
 */
public class TypeAnnotatedTreePrinter implements TreePrinter {
  private final CodeWriter writer;

  /**
   * Constructs a new {@linkplain TreePrinter} instance that prints programs
   * using the given {@code CodeWriter}.
   *
   * @param writer
   *          the {@code CodeWriter} to print to
   */
  public TypeAnnotatedTreePrinter(CodeWriter writer) {
    this.writer = writer;
  }

  /**
   * Constructs a new {@linkplain TreePrinter} instance that prints programs
   * using to the given stream. Output is kept to 80 columns.
   *
   * @param o
   *          the output stream to print to
   */
 public TypeAnnotatedTreePrinter(OutputStream o) {
    this(new OptimalCodeWriter(o, 80));
  }

  public void print(VisualizableTreeNode node) {
    printHelper(node);
    try {
      writer.flush();
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * Recursive helper. {@link #writer} maintains its indentation state across
   * calls.
   *
   * @param node
   *          the current root
   */
  private void printHelper(VisualizableTreeNode node) {
    writer.write("(");
    if (node instanceof AbstractSyntaxTree)
    	writer.write(node.toString());
    else
    	writer.write(node.label());
    for (VisualizableTreeNode child : node.children()) {
      writer.allowBreak(4);
      writer.begin(4);
      printHelper(child);
      writer.end();
    }
    writer.write(")");
    if (node instanceof BlockNode){
    	BlockNode block = (BlockNode)node;
    	if (block.pa3_symboltable != null){
	    	writer.write(" left block with context stack:");
	    	for(String s : block.pa3_symboltable){
	    		writer.allowBreak(4);
	    		writer.begin(4);
	    		writer.write(s);
	    		writer.end();
	    	}
    	}
    	
    }
    
    
    writer.allowBreak(0);
  }
}

