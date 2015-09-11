-module(dolphins).
-export([dolphin1/0]).

dolphin1() ->
    receive
        {From, do_a_flip} ->
            From ! "How about no!~n";
        {From, fish} ->
            From ! "Thank you! What do you want me to do :)~n";
        _ ->
            io:format("Bye Bye!~n")
    end.
