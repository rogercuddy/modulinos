#if SCRIPTEDMAIN
class ScriptedMain {
  public var meaningOfLife = 42
}
#else
public class ScriptedMain {
  public var meaningOfLife = 42
}
#endif

#if SCRIPTEDMAIN
var meaning = ScriptedMain().meaningOfLife

println("Main: The meaning of life is \(meaning)")
#endif
