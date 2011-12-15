package edu.cornell.cs.cs4120.testing;

import java.io.Reader;

import edu.cornell.cs.cs4120.xi.lexer.Lexer;

/**
 * A factory for instantiating lexer instances. Implement this for PA1 and
 * indicate your implementation class in your overview document.
 */
public interface LexerFactory {
  /**
   * Creates a lexer that reads tokens from the given reader. The compilation
   * unit for the given reader is anonymous.
   * 
   * @param reader
   *          the reader from which tokens will be read
   * @return an initialized {@code Lexer} that will read tokens from the
   *         given reader
   */
  Lexer newLexer(Reader reader);
}
