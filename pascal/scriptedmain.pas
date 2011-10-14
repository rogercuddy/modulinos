unit ScriptedMain;
	interface

	function MeaningOfLife () : integer;

	implementation

	function MeaningOfLife () : integer;
	begin
		MeaningOfLife := 42
	end;
initialization
	write('Main: The meaning of life is: ');
	writeln(MeaningOfLife())
end.