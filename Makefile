# Each pipeline command is written once, here. The pre-push hooks and CI call these targets.
# CMake owns the build, and these targets only call it.

.PHONY: check format analyze test

# Run every pre-push hook on every file. This is the same pipeline a push runs.
check:
	pre-commit run --all-files --hook-stage pre-push

# Format every tracked C++ file in place.
format:
	git ls-files '*.cpp' '*.cc' '*.h' '*.hpp' | xargs --no-run-if-empty clang-format -i

# Configure and build with clang-tidy and cppcheck on.
analyze:
	cmake --workflow --preset host-analysis

# Configure, build and run the unit tests.
test:
	cmake --workflow --preset host-debug
