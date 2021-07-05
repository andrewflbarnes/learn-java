.SILENT:
.DEFAULT_GOAL = help

.PHONY: help
help:
	echo "- quarkus             : build the quarkus application"
	echo "- quarkus-native      : build the native quarkus application"
	echo "- quarkus-native-test : build and test the native quarkus application"

.PHONY: quarkus
quarkus:
	./gradlew quarkus:build

.PHONY: quarkus-native
quarkus-native:
	./gradlew quarkus:build -Dquarkus.package.type=native

.PHONY: quarkus-native-test
quarkus-native-test:
	./gradlew quarkus:testNative -Dquarkus.package.type=native