FROM ubuntu:26.04@sha256:d66b366dac61b575bee2aef07e9c26e8070096fbe84a3d4d3eb0da069b5d76db

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        clang-format \
        clang-tidy \
        cmake \
        cppcheck \
        g++ \
        gcc-arm-none-eabi \
        gdb-multiarch \
        git \
        lcov \
        libnewlib-arm-none-eabi \
        libstdc++-arm-none-eabi-newlib \
        ninja-build \
        pre-commit \
        python3-venv \
        qemu-system-arm \
    && rm -rf /var/lib/apt/lists/*

# Syft is not in Ubuntu's archive, so it comes from Anchore's release package, pinned by SHA-256.
ADD --checksum=sha256:81f3914b9ca3f39cafcf3eb1bdc9f7b7049705fabc0ba42c3b18e07a11de2962 \
    https://github.com/anchore/syft/releases/download/v1.57.1/syft_1.57.1_linux_amd64.deb \
    /tmp/syft.deb
RUN dpkg --install /tmp/syft.deb && rm /tmp/syft.deb

USER ubuntu

RUN mkdir -p /home/ubuntu/.claude
