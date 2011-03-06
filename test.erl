% Compile scriptedmain.erl first.

-module(test).
-import(scriptedmain, [meaning_of_life/0]).

main(_) ->
	io:format("Test: The meaning of life is ~w~n", [meaning_of_life()]).