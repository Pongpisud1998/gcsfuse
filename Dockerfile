FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y \
    wget  \
    gnupg \
    lsb-release && \
    echo "deb http://packages.cloud.google.com/apt gcsfuse-`lsb_release -c -s` main" > /etc/apt/sources.list.d/gcsfuse.list && \
    wget https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    apt-key add apt-key.gpg && \
    apt-get update && \
    apt-get install -y gcsfuse=0.41.12 &&\
    mkdir /opt/dest