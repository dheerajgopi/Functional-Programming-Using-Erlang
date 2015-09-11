-module(maximum).
-export([maximum/1]).

maximum([]) -> 0;

maximum([X|Xs]) ->
    maximum([X|Xs], X).

maximum([], X) -> X;
maximum([X|Xs], X) ->
    maximum([(hd(Xs))|(tl(Xs))], max(X, (hd(Xs)))).
