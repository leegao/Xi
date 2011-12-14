package edu.cornell.cs.cs4120.testing;

import java.io.Reader;

import edu.cornell.cs.cs4120.xi.lexer.Lexer;

/**
 * A worthless default {@link LexerFactory} implementation.
 */
public class DefaultLexerFactory implements LexerFactory {
  public Lexer newLexer(Reader reader) {
    throw new UnsupportedOperationException();
  }
}
