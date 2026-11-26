# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.0] - 2026-11-26

### Added
- clang-tidy with cert, hicpp, cppcoreguidelines and Power of Ten checks
- cppcheck with the warning, performance and portability checks
- `FLIGHT_STATIC_ANALYSIS` CMake option and `host-analysis` preset that run both analyzers
- Static analysis pre-push hook
- Makefile with `check`, `format`, `analyze` and `test` targets. The hooks and CI call it
- GitHub Actions CI on-PR
- Dev container image cached in GHCR and rebuilt only when the Dockerfile changes

### Changed
- Include remaining tools in dev container
- Pre-push hooks call Makefile targets

## [0.1.0] - 2026-11-24

### Added
- Dev container on `ubuntu:26.04` pinned by digest, with GCC, CMake, Ninja, clang-format and pre-commit
- CMake build in C++17 with exceptions turned off, more warnings, and -Werror
- `host-debug` CMake preset that configures and build-and-tests in one command
- GoogleTest v1.18.0 pinned by SHA-256. One fake smoke test.
- `.clang-format`. Google style with a 100-column limit
- precommit on-push hook for formatting, build-and-test. Blocks failing local ci
