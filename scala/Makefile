all: ScriptedMain.class Test.class
	scala ScriptedMain
	scala Test

ScriptedMain.class: ScriptedMain.scala
	scalac ScriptedMain.scala

Test.class: Test.scala ScriptedMain.scala
	scalac Test.scala ScriptedMain.scala

lint: scalaclint

scalaclint:
	for s in *.scala; do scalac -deprecation $$s; done

clean:
	-rm *.class
