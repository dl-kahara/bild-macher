FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    bubblewrap \
    curl \
    git \
    python3 \
    systemd-repart \
    systemd-ukify \
    zstd

RUN git clone https://github.com/systemd/mkosi \
    && ln -s $PWD/mkosi/bin/mkosi /usr/local/bin/mkosi \
    && mkosi --version

WORKDIR /workdir
