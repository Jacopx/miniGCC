
%%

%standalone
%class Calc

nl		=  \n|\r|\r\n
id = [a-zA-Z][a-zA-Z0-9]*
intKey = int
intNumber	= [1-9][0-9]*
doubleKey = double
doubleNumber = [1-9][0-9]*"."[0-9]* | "."[0-9]+ | 0"."[0-9]*

%%
\/\/(.*) {;}
\/\*(.*\n)*.*\*\/  {;}

"{"       {System.out.print("BO ");}
"}"       {System.out.print("BC ");}
"("       {System.out.print("CO ");}
")"       {System.out.print("CC ");}
"["       {System.out.print("SO ");}
"]"       {System.out.print("SC ");}
"+"       {System.out.print("PLUS ");}
"-"       {System.out.print("MINUS ");}
"*"       {System.out.print("MULT ");}
"/"       {System.out.print("SLASH ");}
"="       {System.out.print("EQUAL ");}
";"       {System.out.print("S ");}
"."       {System.out.print("D ");}
","       {System.out.print("C ");}
"<"       {System.out.print("MIN ");}
">"       {System.out.print("MAJ ");}
"&"       {System.out.print("AND ");}

{intKey}	{System.out.print("INT_TYPE ");}
{doubleKey}	{System.out.print("DOUBLE_TYPE ");}

{id}      {System.out.print("ID: " +yytext() + " ");}
{intNumber}	{System.out.print("INT: " +yytext() + " ");}
{doubleNumber} {System.out.print("DOUBLE: " +yytext() + " ");}

{nl}|" "|\t 	{System.out.println("");}

.		{System.out.println("Error: " + yytext());}
