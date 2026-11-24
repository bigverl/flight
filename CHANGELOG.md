# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2026-11-24

### Added
- Dev container on `ubuntu:26.04` pinned by digest, with GCC, CMake, Ninja, clang-format and pre-commit
- CMake build in C++17 with exceptions turned off, more warnings, and -Werror
- `host-debug` CMake preset that configures and build-and-tests in one command
- GoogleTest v1.18.0 pinned by SHA-256. One fake smoke test.
- `.clang-format`. Google style with a 100-column limit
- precommit on-push hook for formatting, build-and-test. Blocks failing local ci
