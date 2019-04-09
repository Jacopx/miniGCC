/* Lab 2 - es 1 ||| @Jacopx (GitHub)  */
%%

%standalone
%unicode
%class Lexer

nl = \r|\n|\r\n
ws = [\ \t]
id = [a-zA-Z][a-zA-Z0-9]*
int	= [1-9][0-9]* | 0
double = [1-9][0-9]*"."[0-9]* | "."[0-9]+ | 0"."[0-9]*

%%
"/*" ~ "*/"     {;}

"{"       {System.out.print("BO ");}
"}"       {System.out.print("BC ");}
"("       {System.out.print("CO ");}
")"       {System.out.print("CC ");}
"["       {System.out.print("SO ");}
"]"       {System.out.print("SC ");}
"+"       {System.out.print("PLUS ");}
"-"       {System.out.print("MINUS ");}
"*"       {System.out.print("STAR ");}
"/"       {System.out.print("DIV ");}
"="       {System.out.print("EQ ");}
";"       {System.out.print("S ");}
"."       {System.out.print("D ");}
","       {System.out.print("C ");}
"<"       {System.out.print("MIN ");}
">"       {System.out.print("MAJ ");}
"<="      {System.out.print("MIN_EQ ");}
"=<"      {System.out.print("EQ_MIN ");}
">="      {System.out.print("MAJ_EQ ");}
"=>"      {System.out.print("EQ_MAJ ");}
"&"       {System.out.print("AND ");}
"|"       {System.out.print("OR ");}
"!"       {System.out.print("NOT ");}

"int"	     {System.out.print("INT_TYPE ");}
"double"	 {System.out.print("DOUBLE_TYPE ");}
"while"    {System.out.print("WHILE ");}
"if"       {System.out.print("IF ");}
"else"     {System.out.print("ELSE ");}
"print"    {System.out.print("PRINT ");}

{id}       {System.out.print("ID: " +yytext() + " ");}
{int}	     {System.out.print("INT: " +yytext() + " ");}
{double}   {System.out.print("DOUBLE: " +yytext() + " ");}

{ws}|{nl}  {;}

.		       {System.out.println("Error: " + yytext());}
