# quarkus

If you want to learn more about Quarkus, please visit its website: [quarkus.io](https://quarkus.io/).

## Running the application in dev mode

You can run your application in dev mode that enables live coding using:
```bash
./gradlew quarkusDev
```

> **_NOTE:_**  Quarkus now ships with a Dev UI, which is available in dev mode only at http://localhost:8080/q/dev/.

## Packaging and running the application

By default build produces the `quarkus-run.jar` file in the `build/quarkus-app/` directory.
This is not an _über-jar_ as the dependencies are copied into the `build/quarkus-app/lib/` and
`build/quarkus-app/app` directories.

It can be run as normal with
```bash
java -jar build/quarkus-app/quarkus-run.jar
```

If you want to build an _über-jar_, execute the following command:
```shell script
./gradlew build -Dquarkus.package.type=uber-jar
```

## Creating a native executable

You can create a native executable using: 
```shell script
./gradlew build -Dquarkus.package.type=native
```

Or, if you don't have GraalVM installed, you can run the native executable build in a container using: 
```shell script
./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true
```

You can then execute your native executable with: `./build/quarkus-0.0.1-SNAPSHOT-runner`

## Native tests

Native tests may be run using the `testNative` command. This requires that the native be built. As the build
will not create the native image by default, if it doesn't already exist then the `-Dquarkus.package.type=native`
flag will need to be set.