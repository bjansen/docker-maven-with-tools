FROM maven:3.6.3-jdk-11-slim

RUN apt-get update && apt-get install -y \
        fontconfig-config \
        graphviz \
        libfreetype6 \
        socat \
    && rm -rf /var/lib/apt/lists/*
