-module(compose).
-export([compose/1]).


compose([F|Fs]) ->
    fun(X) -> lists:foldl(fun(Fun, Arg) -> Fun(Arg) end, F(X), Fs) end.

twice(F) ->
    compose([F,F]).
