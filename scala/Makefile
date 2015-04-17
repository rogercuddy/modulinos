all: Modulino.class Test.class
	scala Modulino
	scala Test

Modulino.class: Modulino.scala
	scalac Modulino.scala

Test.class: Test.scala Modulino.scala
	scalac Test.scala Modulino.scala

lint: scalaclint

scalaclint:
	for s in *.scala; do scalac -Xlint -deprecation $$s; done

clean:
	-rm *.class
