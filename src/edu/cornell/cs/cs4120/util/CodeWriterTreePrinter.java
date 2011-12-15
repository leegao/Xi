package edu.cornell.cs.cs4120.util;

import java.io.IOException;
import java.io.OutputStream;

import polyglot.util.CodeWriter;
import polyglot.util.OptimalCodeWriter;

/**
 * An {@linkplain TreePrinter} implementation designed to print ASTs through a
 * provided {@link CodeWriter}.
 */
public class CodeWriterTreePrinter implements TreePrinter {
  private final CodeWriter writer;

  /**
   * Constructs a new {@linkplain TreePrinter} instance that prints programs
   * using the given {@code CodeWriter}.
   *
   * @param writer
   *          the {@code CodeWriter} to print to
   */
  public CodeWriterTreePrinter(CodeWriter writer) {
    this.writer = writer;
  }

  /**
   * Constructs a new {@linkplain TreePrinter} instance that prints programs
   * using to the given stream. Output is kept to 80 columns.
   *
   * @param o
   *          the output stream to print to
   */
 public CodeWriterTreePrinter(OutputStream o) {
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
    writer.write(node.label());
    for (VisualizableTreeNode child : node.children()) {
      writer.allowBreak(4);
      writer.begin(4);
      printHelper(child);
      writer.end();
    }
    writer.write(")");
    writer.allowBreak(0);
  }
}
