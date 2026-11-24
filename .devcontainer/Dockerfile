FROM ubuntu:26.04@sha256:d66b366dac61b575bee2aef07e9c26e8070096fbe84a3d4d3eb0da069b5d76db

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        clang-format \
        cmake \
        g++ \
        git \
        ninja-build \
        pre-commit \
    && rm -rf /var/lib/apt/lists/*

USER ubuntu
