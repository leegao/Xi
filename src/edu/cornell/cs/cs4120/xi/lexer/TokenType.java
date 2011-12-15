package edu.cornell.cs.cs4120.xi.lexer;

/**
 * A type of token in the source language.
 */
public enum TokenType {
  IDENTIFIER,
  
  // Literals
  
  /** e.g.&nbsp; {@code 'a'} */
  CHARACTER_LITERAL,
  
  /** e.g.&nbsp; {@code 42} */
  INTEGER_LITERAL,
  
  /** e.g.&nbsp; {@code "cs4120"} */
  STRING_LITERAL,
  
  // Reserved words
  
  /** {@code if} */
  IF,

  /** {@code else} */
  ELSE,
  
  /** {@code while} */
  WHILE,
  
  /** {@code break} */
  BREAK,
  
  /** {@code return} */
  RETURN,
  
  /** {@code use} */
  USE,
  
  /** {@code length} */
  LENGTH,
  
  /** {@code int} */
  INT,
  
  /** {@code bool} */
  BOOL,
  
  /** {@code true} */
  TRUE,
  
  /** {@code false} */
  FALSE,
  
  // Operators
  
  /** {@code +} */
  PLUS,
  
  /** {@code -} */
  MINUS,
  
  /** {@code *} */
  TIMES,
  
  /** {@code /} */
  DIVIDE,
  
  /** {@code %} */
  MODULO,
  
  /** {@code !} */
  NOT,
  
  /** {@code <} */
  LT,
  
  /** {@code <=} */
  LEQ,
  
  /** {@code >} */
  GT,
  
  /** {@code >=} */
  GEQ,
  
  /** {@code &} */
  AND,
  
  /** {@code |} */
  OR,
  
  /** {@code ==} */
  EQUAL,
  
  /** {@code !=} */
  NOT_EQUAL,  
  
  /** {@code =} */
  GETS,
  
  // Other punctuation
  
  /** {@code [} */
  OPEN_BRACKET,
  
  /** {@code ]} */
  CLOSE_BRACKET,
  
  /** {@code (} */
  OPEN_PAREN,
  
  /** {@code )} */
  CLOSE_PAREN,
  
  /** <code>{</code>*/
  OPEN_BRACE,
  
  /** {@code }} */
  CLOSE_BRACE,
  
  /** {@code :} */
  COLON,
  
  /** {@code ,} */
  COMMA,
  
  /** {@code ;} */
  SEMICOLON,
  
  /** {@code _} */
  UNDERSCORE,

  /** {@code class} */
  CLASS,

  /** {@code extends} */
  EXTENDS,

  /** {@code new} */
  NEW,

  /** {@code this} */
  THIS,
  
  /** Period token */
  PERIOD,
  
  /** Null token */
  NULL,
  
  /** Final token - for defining immutable variable like in Java */
  FINAL,
  
  /** Continue token */
  CONTINUE
}
