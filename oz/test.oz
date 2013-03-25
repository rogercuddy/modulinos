functor
import
  ScriptedMain
  System
  Application
define
  {System.printInfo "Test: The meaning of life is "#{Int.toString {ScriptedMain.meaningOfLife}}#"\n"}
  {Application.exit 0}
end