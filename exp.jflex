
%%

%standalone
%class Calc

nl		=  \n|\r|\r\n

bo    =   \{
bc    =   \}
co    =   \(
cc    =   \)
so    =   \[
sc    =   \]

id = [a-zA-Z][a-zA-Z0-9]*
intKey = int
intNumber	=  [1-9][0-9]*
doubleKey = double

%%
"{"       {System.out.println("BO");}
"}"       {System.out.println("BC");}
"("       {System.out.println("CO");}
")"       {System.out.println("CC");}
"["       {System.out.println("SO");}
"]"       {System.out.println("SC");}
"+"       {System.out.println("PLUS");}
"-"       {System.out.println("MINUS");}
"*"       {System.out.println("MULT");}
"/"       {System.out.println("SLASH");}
"="       {System.out.println("EQUAL");}
";"       {System.out.println("S");}
"."       {System.out.println("D");}
","       {System.out.println("C");}
"<"       {System.out.println("MIN");}
">"       {System.out.println("MAJ");}
"&"       {System.out.println("AND");}


{id}      {System.out.println("ID: " +yytext());}
{intKey}	{System.out.println("INT_TYPE: " +yytext());}
{intNumber}	{System.out.println("INT: " +yytext());}
{doubleKey}	{System.out.println("DOUBLE_TYPE: " +yytext());}

{nl}|" "|\t 	{;}

.		{System.out.println("Error: " + yytext());}
