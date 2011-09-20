package cs4120.lg342.xi;

import java.util.NoSuchElementException;
import edu.cornell.cs.cs4120.xi.lexer.*;

%%
%class XiLexer
%implements Lexer
%public

%unicode
%line
%column
%{
	StringBuffer string = new StringBuffer();
	private boolean isEOF = false;
	public String unit = "";
	protected Token nextToken = null;
	protected Token cached_token = null;
	protected int yycolumn_cache = 0;
	
	@Override
	public Token next(){
		Token next;
		try{
			if (nextToken == null){
				next = lex();
				if (next == null){
					throw new NoSuchElementException();
				}
			}else{
				next = nextToken;
				nextToken = null;
			}
		} catch (java.io.IOException e){
			next = null;
			e.printStackTrace();
		}
		nextToken = null;
		cached_token = next;
		return next;
	}
	
	@Override
	public void remove() {
		throw new UnsupportedOperationException();
	}
	
	@Override
	public boolean hasNext() {
		try{
			if (nextToken == null)
				nextToken = lex();
		} catch (java.io.IOException e){
			return false;
		}
		return !isEOF;
	}
	
	private Token token(TokenType type, String value){
		int col = yycolumn, line = yyline;
		int newlines = value.split("\n").length-1;
		String lastline = value.split("\n")[newlines];
		if (newlines > 0)
			col = lastline.length();
		else
			col += lastline.length();
		
		return new XiToken(value, type, unit, yycolumn+1, col+1, yyline+1, line+newlines+1);
	}
	
	private Token token(TokenType type){
		return token(type, yytext());
	}
%}
%eof{ 
	isEOF = true;
%eof}
%function lex
%type Token
LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
WhiteSpace     = {LineTerminator} | [ \t\f]

Comment     = "//" {InputCharacter}*

Identifier = [a-zA-Z] [a-zA-Z0-9_']*

DecIntegerLiteral = 0 | [1-9][0-9]*
%state STRING

%%
 /* Reserved Words */
<YYINITIAL> "if"                 { return token(TokenType.IF); }
<YYINITIAL> "else"               { return token(TokenType.ELSE); }
<YYINITIAL> "while"              { return token(TokenType.WHILE); }
<YYINITIAL> "break"              { return token(TokenType.BREAK); }
<YYINITIAL> "return"             { return token(TokenType.RETURN); }
<YYINITIAL> "use"                { return token(TokenType.USE); }
<YYINITIAL> "length"             { return token(TokenType.LENGTH); }
<YYINITIAL> "int"                { return token(TokenType.INT); }
<YYINITIAL> "bool"               { return token(TokenType.BOOL); }
<YYINITIAL> "true"               { return token(TokenType.TRUE); }
<YYINITIAL> "false"              { return token(TokenType.FALSE); }

<YYINITIAL> {
  /* identifiers */ 
  {Identifier}                   { return token(TokenType.IDENTIFIER); }
 
  /* literals */
  {DecIntegerLiteral}            { return token(TokenType.INTEGER_LITERAL); }
  \"                             { string.setLength(0); yybegin(STRING); }
  
  /* comments */
  {Comment}                      { /* ignore */ }
  
  
  // re.findall(r"code (.+)\}.+\n\s+(\w+)", a)
  /* Operators */
  "+"                            { return token(TokenType.PLUS); }
  "-"                            { return token(TokenType.MINUS); }
  "*"                            { return token(TokenType.TIMES); }
  "/"                            { return token(TokenType.DIVIDE); }
  "%"                            { return token(TokenType.MODULO); }
  "!"                            { return token(TokenType.NOT); }
  "<"                            { return token(TokenType.LT); }
  "<="                           { return token(TokenType.LEQ); }
  ">"                            { return token(TokenType.GT); }
  ">="                           { return token(TokenType.GEQ); }
  "&"                            { return token(TokenType.AND); }
  "|"                            { return token(TokenType.OR); }
  "=="                           { return token(TokenType.EQUAL); }
  "!="                           { return token(TokenType.NOT_EQUAL); }
  "="                            { return token(TokenType.GETS); }

  /* Other symbols */
  "["                            { return token(TokenType.OPEN_BRACKET); }
  "]"                            { return token(TokenType.CLOSE_BRACKET); }
  "("                            { return token(TokenType.OPEN_PAREN); }
  ")"                            { return token(TokenType.CLOSE_PAREN); }
  "{"                            { return token(TokenType.OPEN_BRACE); }
  "}"                            { return token(TokenType.CLOSE_BRACE); }
  ":"                            { return token(TokenType.COLON); }
  ","                            { return token(TokenType.COMMA); }
  ";"                            { return token(TokenType.SEMICOLON); }
  "_"                            { return token(TokenType.UNDERSCORE); }

  '[^']'                         { String s = yytext().substring(1,yytext().length()-1); 
                                   return token(TokenType.CHARACTER_LITERAL, s); }
  '\\t'                          { return token(TokenType.CHARACTER_LITERAL, "\\t"); }
  '\\''                          { return token(TokenType.CHARACTER_LITERAL, "\\'"); }
  '\\r'                          { return token(TokenType.CHARACTER_LITERAL, "\\r"); }
  '\\n'                          { return token(TokenType.CHARACTER_LITERAL, "\\n"); }
  
 
  /* whitespace */
  {WhiteSpace}                   { /* ignore */ }
}
<STRING> {
  \"                             { yybegin(YYINITIAL); 
                                   yycolumn -= yycolumn_cache + 1; // -1 for the starting "
                                   yycolumn_cache = 0;
                                   return token(TokenType.STRING_LITERAL, 
                                   string.toString()); }
  [^\n\r\"\\]+                   { string.append( yytext() ); yycolumn_cache += yytext().length(); }
  \\t                            { string.append("\\t"); yycolumn_cache += 2;}
  \\n                            { string.append("\\n"); yycolumn_cache += 2;}

  \\r                            { string.append("\\r"); yycolumn_cache += 2;}
  \\\"                           { string.append("\\\""); yycolumn_cache += 2;}
  \\                             { string.append("\\\\"); yycolumn_cache += 2;}
}
 /* error fallback */
.|\n                             { throw new Error("Illegal character <"+
                                                    yytext()+">"); }