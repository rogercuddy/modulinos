import Foundation

public class ScriptedMain {
  public var meaningOfLife = 42
}

#if SCRIPTEDMAIN
@objc class ScriptedMainAutoload {
  @objc class func load() {
    var meaning = ScriptedMain().meaningOfLife

    println("Main: The meaning of life is \(meaning)")
  }
}
#endif
