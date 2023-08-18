FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    openjdk-8-jre-headless \
    openjdk-8-jdk \
    wget \
    nano \
    sudo \
    ssh 

COPY hadoop /opt/hadoop
COPY spark /opt/spark
WORKDIR /app
