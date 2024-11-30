GRADLE:=./gradlew </dev/null

.PHONY: all
## all:	Builds and tests the project.
all:
	$(GRADLE) \
		build \

.PHONY: run
## run:	Runs the Ktor application.
run:
	TZ=UTC $(GRADLE) :app-monitor-ktor:run

.PHONY: clean
## clean:	Removes all generated files.
clean::
	$(GRADLE) clean

.PHONY: help
## help:	Prints this help text.
help:
	@sed -En 's/^## ?//p' $(MAKEFILE_LIST)

-include ~/.User.mk
-include .User.mk
