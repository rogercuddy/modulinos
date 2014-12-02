import Foundation

#if TEST
@objc class TestAutoload {
  @objc class func load() {
    var meaning = ScriptedMain().meaningOfLife

    println("Test: The meaning of life is \(meaning)")
  }
}
#endif
