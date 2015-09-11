-module(zip).
-export([zip/2, zip_with/3]).

zip([X|Xs], [Y|Ys]) ->
    zip_with(fun (A,B) -> {A,B} end, [X|Xs], [Y|Ys]).

zip_with(_F, [X|Xs], []) ->
    [];
zip_with(_F, [], [Y|Ys]) ->
    [];
zip_with(F, [X|Xs], [Y|Ys]) ->
    [F(X,Y)| fun zip:zip_with(F,Xs,Ys)].
