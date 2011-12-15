package edu.cornell.cs.cs4120.xi.lexer.cup;

import java.util.EnumMap;
import java.util.HashSet;
import java.util.Map;

import edu.cornell.cs.cs4120.xi.lexer.TokenType;

/**
 * Employs straightforward (but rather icky) reflection to determine the
 * CUP-generated integer constant associated with {@code EOF} and each token
 * type.
 */
class TokenTypeAdapter {
  private static final String EOF = "EOF";

  private final Class<?> symClass;
  private final Map<TokenType, Integer> tokenTypes;
  private int eof;

  TokenTypeAdapter(Class<?> symClass) {
    this.symClass = symClass;
    this.tokenTypes = new EnumMap<TokenType, Integer>(TokenType.class);
    init();
  }

  private void init() {
    try {
      eof = symClass.getDeclaredField(EOF).getInt(null);
    } catch (IllegalArgumentException e) {
      throw illegalArgumentExceptionFor(EOF, e);
    } catch (SecurityException e) {
      throw illegalArgumentExceptionFor(EOF, e);
    } catch (IllegalAccessException e) {
      throw illegalArgumentExceptionFor(EOF, e);
    } catch (NoSuchFieldException e) {
      throw illegalArgumentExceptionFor(EOF, e);
    }

    for (TokenType tokenType : TokenType.values()) {
      try {
        tokenTypes.put(tokenType, symClass.getDeclaredField(tokenType.name())
            .getInt(null));
      } catch (IllegalArgumentException e) {
        throw illegalArgumentExceptionFor(tokenType.name(), e);
      } catch (SecurityException e) {
        throw illegalArgumentExceptionFor(tokenType.name(), e);
      } catch (IllegalAccessException e) {
        throw illegalArgumentExceptionFor(tokenType.name(), e);
      } catch (NoSuchFieldException e) {
        throw illegalArgumentExceptionFor(tokenType.name(), e);
      }
    }
    if (tokenTypes.keySet().size() !=
        new HashSet<Integer>(tokenTypes.values()).size()) {
      throw new IllegalArgumentException(
          "The symbol values are not all unique.");
    }
  }

  /**
   * A map indicating the {@code int} value corresponding to each token type.
   *
   * @return a map indicating the {@code int} value corresponding to each token
   *         type
   */
  Map<TokenType, Integer> tokenTypes() {
    return tokenTypes;
  }

  /**
   * Probably always 0, but this isn't documented.
   * @return the {@code EOF} token number
   */
  int eof() {
    return eof;
  }

  private static IllegalArgumentException illegalArgumentExceptionFor(
      String field, Throwable e) {
    String msg =
        String.format("The given class doesn't contain a \"public static final "
            + "int %s\" field.", field);
    return new IllegalArgumentException(msg, e);
  }
}
