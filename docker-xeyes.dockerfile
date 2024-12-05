FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /the/WORKDIR/path

CMD ["xeyes"]