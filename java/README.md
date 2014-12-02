# Example

```
$ mvn package
$ mvn exec:java -Dexec.mainClass=us.yellosoft.scriptedmain.ScriptedMain
Main: The meaning of life is 42
$ mvn exec:java -Dexec.mainClass=us.yellosoft.scriptedmain.Test
Test: The meaning of life is 42
```

# Code coverage

```
$ mvn site
$ open target/site/coburtura/index.html
```
