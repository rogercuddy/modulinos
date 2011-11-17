// Compile:
// scalac ScriptedMain.scala
// scalac -classpath . Test.scala
//
// Run (requires '.' in CLASSPATH):
// scala Test

object Test {
	def main(args: Array[String]) {
		println("Test: The meaning of life is " + ScriptedMain.meaningOfLife)
	}
}