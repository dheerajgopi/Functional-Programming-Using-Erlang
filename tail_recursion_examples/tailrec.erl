-module(tailrec).
-export([fib/1, perfect/1]).

fib(0, P, _C) ->
    P;

fib(X, P, C) ->
    fib(X - 1, C, P + C).

fib(X) ->
    fib(X, 1, 0).

perfect(X) ->
    perfect(X, 1, 0).

perfect(X, X, C) ->
    X == C;

perfect(X, P, C) when X rem P == 0 ->
    perfect(X, P + 1, C + P);

perfect(X, P, C) ->
    perfect(X, P + 1, C).
