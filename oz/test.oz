functor
import
  Modulino
  System
  Application
  Property
  Regex at 'x-oz://contrib/regex'
define
  local ScriptName = {Property.get 'application.url'} in
    if {Regex.search "test" ScriptName} \= false then
      {System.printInfo "Test: The meaning of life is "#{Int.toString {Modulino.meaningOfLife}}#"\n"}
      {Application.exit 0}
    end
  end
end
