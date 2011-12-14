package edu.cornell.cs.cs4120.util;

/**
 * A node in a tree that provides enough information to visualize the structure
 * of the tree.
 */
public interface VisualizableTreeNode {
  /**
   * Returns a reasonably short label for this node, for the purposes of
   * visualization.
   * 
   * @return a short label for this node
   */
  String label();

  /** Returns an iterable of this node's children (direct descendants). The
   * returned iterable is empty&mdash;not {@code null}&mdash;if the node is a
   * leaf.
   * 
   * @return this node's children
   */
  Iterable<VisualizableTreeNode> children();
}
