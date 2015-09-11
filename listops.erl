-module(listops).
-export([doublelist/1, evens/1, take/2]).

double(X) ->
    X*2.

doublelist([]) ->
    [];

doublelist([H|T]) ->
    [double(H)|doublelist(T)].

evens([]) ->
    [];

evens([H|T]) ->
    case H rem 2 of
    0 ->
            [H|evens(T)];
    _Else ->
        evens(T)
    end.

take(_T, 0) ->
    [];

take([], _N) ->
    [];

take([H|T], N) ->
    [H|take(T, N-1)].
