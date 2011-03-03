-module(scriptedmain).
-export([main/1]).
-import(lists, [map/2]).

main(Args) ->
	io:format("Directory: ~s~n", [filename:absname("")]),
	io:format("Program: ~s~n", [?FILE]),
	io:format("Number of Args: ~w~n", [length(Args)]),
	map (fun(Arg) -> io:format("Arg: ~s~n", [Arg]) end, Args).