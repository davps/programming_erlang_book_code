-module(lib_misc).
-export([for/3]).

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I) | for(I+1, Max, F)].


%lib_misc:for(1, 4, fun(I) -> I end).
%when I=1 and Max=4, [ F(1) | for(2, 4, F) ]
%when I=2 and Max=4, [ F(1), F(2) | for(3, 4, F) ]
%when I=3 and Max=4, [ F(1), F(2), F(3) | for(4, 4, F) ]
%when I=4 and Max=4, [ F(1), F(2), F(3), F(4) ]


