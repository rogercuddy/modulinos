# modulinos/java

Modulino in Java

# EXAMPLE

```
$ mvn package
$ mvn exec:java -Dexec.mainClass=us.yellosoft.modulino.Modulino
Main: The meaning of life is 42
$ mvn exec:java -Dexec.mainClass=us.yellosoft.modulino.Test
Test: The meaning of life is 42
```

# REQUIREMENTS

* [JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html) 1.6+

# CODE COVERAGE

```
$ mvn site
$ open target/site/coburtura/index.html
```
