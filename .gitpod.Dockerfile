FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    openjdk-11-jdk ant libgtk2.0-dev git git-lfs \
    xfce4 xfce4-goodies tigervnc-standalone-server \
    python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace/contiki-ng
