-module(geometry).
-export([test/0,area/1]).

test() ->
    12  = area({rectangle, 3, 4}),
    144 = area({square,12}),
    'testOK'.

area({rectangle, Width, Height}) -> Width * Height;
area({square, Side})             -> Side * Side;
area({circle, Radius})           -> 3.14159 * Radius * Radius.
