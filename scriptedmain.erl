-module(scriptedmain).
-export([main/1]).
-import(lists, [map/2]).

main(Args) ->
	io:format("Number of Args: ~w~n", [length(Args)]),
	io:format("Program: ~s~n", [?FILE]),
	map (fun(Arg) -> io:format("Arg: ~s~n", [Arg]) end, Args).