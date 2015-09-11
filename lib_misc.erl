-module(lib_misc).
-export([for/3, perms/1, odds_and_evens/1, odds_and_evens_tmp/3]).

for(Max, Max, F) ->
	[F(Max)];
for(Min, Max, F) ->
	[F(Min) | for(Min + 1, Max, F)].


perms([]) ->
	[[]];
perms(L) ->
	[[H|T] || H <- L, T <- perms(L -- [H])].


odds_and_evens(L) ->
	odds_and_evens_tmp(L, [], []).


odds_and_evens_tmp([H|T], Odds, Evens) ->
	case (H rem 2) of
		1 -> odds_and_evens_tmp(T, [H|Odds], Evens);
		0 -> odds_and_evens_tmp(T, Odds, [H|Evens])
	end;
odds_and_evens_tmp([], Odds, Evens) ->
	{Odds, Evens}.


my_tuple_to_list() ->
