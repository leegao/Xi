package edu.cornell.cs.cs4120.testing;

import java.io.Reader;

import edu.cornell.cs.cs4120.xi.lexer.Lexer;

/**
 * A factory for instantiating lexer instances that also takes the name of the
 * compilation unit. You may implement this for PA1, but this is not mandatory.
 */
public interface CompilationUnitLexerFactory extends LexerFactory {
  /**
   * Creates a lexer that reads tokens from the given reader. The compilation
   * unit for the given reader is anonymous.
   * 
   * @param reader
   *          the reader from which tokens will be read
   * @param name
   *          the name of the compilation unit
   * @return an initialized {@code Lexer} that will read tokens from the
   *         given reader
   */
  Lexer newLexer(Reader reader, String name);
}
