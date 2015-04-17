-module(test).
-export([start/0]).
-import(modulino, [meaning_of_life/0]).

start() ->
  io:format("Test: The meaning of life is ~w~n", [meaning_of_life()]),
  init:stop().
