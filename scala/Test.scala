// Compile:
// scalac ScriptedMain.scala
// scalac -classpath . Test.scala
//
// Run (either CLASSPATH must contain the current directory (.), or the CLASSPATH must be unset):
// scala Test

object Test {
	def main(args: Array[String]) {
		println("Test: The meaning of life is " + ScriptedMain.meaningOfLife)
	}
}