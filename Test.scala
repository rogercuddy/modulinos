// Compile:
// scalac ScriptedMain.scala
// scalac -classpath . Test.scala
//
// Run:
// scala Test

object Test {
	def main(args: Array[String]) {
		println("Test: The meaning of life is " + ScriptedMain.meaningOfLife)
	}
}