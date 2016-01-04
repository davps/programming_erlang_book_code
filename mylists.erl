-module(mylists).
-export([sum/1, map/2]).

sum([H|T]) 	-> H + sum(T);
sum([]) 	-> 0.

%tracing the execution:
%1. sum([1,3,10])
%2. sum([1,3,10]) 	= 1 + sum([3,10]) 
%3. 			= 1 + 3 + sum([10])
%4.			= 1 + 3 + 10 + sum([])
%5.			= 1 + 3 + 10 + 0
%6.			= 14

map(_, []) 	-> [];
map(F, [H|T])	-> [F(H) | map(F, T)].


