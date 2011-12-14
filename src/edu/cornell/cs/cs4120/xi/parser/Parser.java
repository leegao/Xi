package edu.cornell.cs.cs4120.xi.parser;

import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;

/**
 * A parser for the Xi language.
 */
public interface Parser {
  /**
   * Returns an abstract syntax representation of a Xi program.
   * 
   * @return an AST representing a program
   * @throws CompilationException
   *           if there is a syntax error in the program
   */
  AbstractSyntaxNode parse() throws CompilationException;
}
