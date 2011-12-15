package edu.cornell.cs.cs4120.xi;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

/**
 * Abstract syntax tree node for representing a Xi program.
 */
public interface AbstractSyntaxNode extends VisualizableTreeNode {
  /**
   * The source file position where this node occurs.
   *
   * <p>The start of the position should be the start of the leftmost token in
   * this node, and the end of the position should be the end of the rightmost
   * token in this node.
   *
   * <p>This is useful for error reporting.
   *
   * @return the position of this node
   */
  Position position();
}
