package edu.cornell.cs.cs4120.xi.lexer;

import edu.cornell.cs.cs4120.xi.Position;

/**
 * A token (also called a symbol or a lexeme) in the language.
 */
public interface Token {
  /**
   * The type of this token.
   * 
   * @return this token's type
   */
  TokenType type();

  /**
   * The position at which this token occurs in the source.
   * 
   * @return this token's position
   */
  Position position();

  /**
   * The string of characters comprising the token in the source.
   * 
   * @return the token's value
   */
  String value();

  /**
   * Returns whether two tokens are equal. Two tokens are equal if and only if
   * they have the same types and values and occur in the same position in the
   * source.
   * 
   * @param that
   *          the object with which to compare
   * @return {@code true} iff {@code this} and {@code that} are equal
   */
  boolean equals(Object that);
}
