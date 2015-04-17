import Foundation

public class Modulino {
  public var meaningOfLife = 42

  public init() {}

  public class func main() {
    var meaning = Modulino().meaningOfLife

    println("Main: The meaning of life is \(meaning)")
  }
}

#if MODULINO
@objc class ModulinoAutoload {
  @objc class func load() {
    Modulino.main()
  }
}
#endif
