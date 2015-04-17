# Example

```
$ mvn package
$ mvn exec:java -Dexec.mainClass=us.yellosoft.modulino.groovy.Modulino
Main: The meaning of life is 42
$ mvn exec:java -Dexec.mainClass=us.yellosoft.modulino.groovy.Test
Test: The meaning of life is 42
```

# Code coverage

```
$ mvn site
$ open target/site/coburtura/index.html
```
