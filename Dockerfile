FROM ubuntu:20.04

ENV RELEASE_URL="https://github.com/airalab/robonomics/releases/download/v0.25.0/robonomics-0.25.0-x86_64-unknown-linux-gnu.tar.gz"

RUN apt-get update \
    && apt-get install -y wget git tar \
    && rm -rf /var/lib/apt/lists/* \
    && rm /bin/sh \
    && ln -s /bin/bash /bin/sh \
    && apt-get clean \
    && apt-get autoclean \
    && wget $RELEASE_URL \
    && tar xf *gz \
    && rm *gz \
    && chmod +x robonomics \
    && mv robonomics /usr/local/bin/robonomics \
    && /usr/local/bin/robonomics --version

WORKDIR /root
USER root

EXPOSE 30333 9933 9944

CMD ["/usr/local/bin/robonomics"]
