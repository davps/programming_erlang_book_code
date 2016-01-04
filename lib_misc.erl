-module(lib_misc).
-export([for/3, qsort/1, pythag/1]).


for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I) | for(I+1, Max, F)].


%lib_misc:for(1, 4, fun(I) -> I end).
%when I=1 and Max=4, [ F(1) | for(2, 4, F) ]
%when I=2 and Max=4, [ F(1), F(2) | for(3, 4, F) ]
%when I=3 and Max=4, [ F(1), F(2), F(3) | for(4, 4, F) ]
%when I=4 and Max=4, [ F(1), F(2), F(3), F(4) ]

qsort([]) -> [];
qsort([Pivot|T]) ->
	qsort([X || X <- T, X < Pivot])
	++ [Pivot] ++
	qsort([X || X <- T, X >= Pivot]).


pythag(N) ->
	[ {A, B, C} ||
		A <- lists:seq(1, N),
		B <- lists:seq(1, N),
		C <- lists:seq(1, N),
		A + B + C =< N,
		A*A + B*B =:= C*C
	].




