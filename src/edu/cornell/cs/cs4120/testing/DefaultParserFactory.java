package edu.cornell.cs.cs4120.testing;

import java.io.Reader;

import edu.cornell.cs.cs4120.xi.parser.Parser;

/**
 * A worthless default {@link ParserFactory} implementation.
 */
public class DefaultParserFactory implements ParserFactory {
  public Parser newParser(Reader reader) {
    throw new UnsupportedOperationException();
  }
}
