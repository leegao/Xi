package edu.cornell.cs.cs4120.util;

/**
 * Pretty-prints a tree to some provided output.
 */
public interface TreePrinter {
  /**
   * Prints a tree.
   * 
   * @param program
   *          the program to print
   */
  void print(VisualizableTreeNode tree);
}
