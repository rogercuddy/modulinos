{$IFDEF modulino}
program Modulino;
{$ELSE}
unit Modulino;
interface
function MeaningOfLife () : integer;
implementation
{$ENDIF}
function MeaningOfLife () : integer;
begin
    MeaningOfLife := 42
end;
{$IFDEF modulino}
begin
    write('Main: The meaning of life is: ');
    writeln(MeaningOfLife())
{$ENDIF}
end.
