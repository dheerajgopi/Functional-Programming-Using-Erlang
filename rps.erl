-module(rps).
-export([result/2, tournament/2]).

result(X,Y) ->
    case {X,Y} of
        {rock, paper} ->
            -1;
        {rock, scissor} ->
            1;
        {paper, rock} ->
            1;
        {paper, scissor} ->
            -1;
        {scissor, rock} ->
            -1;
        {scissor, paper} ->
            1;
        {A, A} ->
            0;
        {_, _} ->
            0
    end.

tournament(Left,Right) ->
    Scorecard = lists:zipwith(fun rps:result/2, Left, Right),
    lists:foldl(fun (X,Y) -> X+Y end, 0, Scorecard).
