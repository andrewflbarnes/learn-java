# learn-java

A small repository of java projects for learning different java technologies. Each is in its own subproject.

### General notes

In general projects target Java 11 (the current LTS at time of writing) and have been tested locally with
graalvm 21.1 (JDK 16)

These projects are all built with gradle 7 - use the wrapper. To build a specific subproject use
```bash
./gradlew <subproject>:build
# e.g.
./gradlew quarkus:build
```

Common gradle configuration is applied through convention plugins - see `buildSrc`.

For convenience a `Makefile` is provided. A build is performed by calling a recipe with the same name as
the subproject. More complex commands are prefix by the subproject e.g.
```bash
# equivalent to ./gradlew quarkus:build
make quarkus
# equivalent to ./gradlew quarkus:testNative -Dquarkus.package.type=native (requires graalvm)
make quarkus-native-test
```

For a list of all recipes use `make help`.

More information on each project can be found in the corresponding readmes below

### Subprojects
- [Quarkus](quarkus/README.md)
