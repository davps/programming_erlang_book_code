-module(geometry). %module declaration
-export([area/1]). %the function area with one argument can be called from outside this module

%the function area consist of two 'clauses', separated by 
%semicolons and terminated by do whitespace

%head of the clause	  	 %separator     %body of the clause
area({rectangle, Width, Height})	-> 	Width * Height; 
area({square, Side})			-> 	Side * Side.


