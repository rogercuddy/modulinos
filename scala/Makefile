all: ScriptedMain.class Test.class
	scala ScriptedMain
	scala Test

ScriptedMain.class: ScriptedMain.scala
	scalac ScriptedMain.scala

Test.class: Test.scala ScriptedMain.scala
	scalac Test.scala ScriptedMain.scala

clean:
	-rm *.class
