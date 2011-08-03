-module(scriptedmain).
-export([meaning_of_life/0]).

meaning_of_life() -> 42.

main(_) -> io:format("Main: The meaning of life is ~w~n", [meaning_of_life()]).