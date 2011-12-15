package edu.cornell.cs.cs4120.testing;

import java.io.Reader;

import edu.cornell.cs.cs4120.xi.parser.Parser;

/**
 * A factory for instantiating parser instances. Implement this for PA2 and
 * indicate your implementation class in your overview document.
 */
public interface ParserFactory {
  /**
   * Creates a parser that reads from the given reader. The compilation unit for
   * the given reader is anonymous.
   *
   * @param reader
   *          the reader from which tokens will be read
   * @return an initialized {@code Parser} that will parse the tokens from
   *         the given reader
   */
  Parser newParser(Reader reader);
}
