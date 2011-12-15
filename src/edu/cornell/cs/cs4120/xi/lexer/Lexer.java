package edu.cornell.cs.cs4120.xi.lexer;

import java.util.Iterator;
import java.util.NoSuchElementException;

/**
 * A lexer (or scanner or tokenizer) for the Xi language.
 */
public interface Lexer extends Iterator<Token> {
  /**
   * Returns the next token in the input.
   * 
   * @throws NoSuchElementException if there are no more tokens in the input
   */
  public Token next();
  
  /**
   * This operation is not supported.
   * 
   * @throws UnsupportedOperationException whenever invoked
   */
  public void remove();
}
