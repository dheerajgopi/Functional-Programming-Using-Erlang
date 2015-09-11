-module(week1).
-export([perimeter/1]).

perimeter({triangle, {{X1, Y1}, {X2, Y2}, {X3, Y3}}}) ->
    math:sqrt(abs(((X1-X2)*2) + ((Y1-Y2)*2))) +
    math:sqrt(abs(((X2-X3)*2) + ((Y2-Y3)*2))) +
    math:sqrt(abs(((X3-X1)*2) + ((Y3-Y1)*2)));

perimeter({rectangle, {{X1, Y1}, {X2, Y2}, {X3, Y3}, {X4, Y4}}}) ->
    math:sqrt(abs(((X1-X2)*2) + ((Y1-Y2)*2))) +
    math:sqrt(abs(((X2-X3)*2) + ((Y2-Y3)*2))) +
    math:sqrt(abs(((X3-X4)*2) + ((Y3-Y4)*2))) +
    math:sqrt(abs(((X4-X1)*2) + ((Y4-Y1)*2))).
