// Compile:
//
// scalac ScriptedMain.scala Test.scala
//
// Run:
//
// scala Test

object Test {
  def main(args: Array[String]) : Unit = println("Test: The meaning of life is " + ScriptedMain.meaningOfLife)
}
