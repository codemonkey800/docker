# Inspiration from https://github.com/johnjelinek/csgoserver-docker/blob/master/Dockerfile
FROM debian:jessie-slim
MAINTAINER Jeremy Asuncion <jeremyasuncion808@gmail.com>

ARG server

EXPOSE 27015/tcp
EXPOSE 27015/udp

# Install server dependencies
RUN dpkg --add-architecture i386 \
    && apt-get update && apt-get install -y \
        mailutils \
        postfix \
        curl \
        wget \
        file \
        gzip \
        bzip2 \
        bsdmainutils \
        python \
        util-linux \
        tmux \
        lib32gcc1 \
        libstdc++6 \
        libstdc++6:i386 \
    && rm -rf /var/lib/apt/lists/*

# Download gsm script
RUN mkdir /steam \
    && wget --show-progress -qO/steam/server https://gameservermanagers.com/dl/$server \
    && chmod +x /steam/server

# Create gsm user
RUN useradd -rd /steam gsm \
    && chown -R gsm:gsm /steam

# Run non-interactive server install
WORKDIR /steam
USER gsm
RUN ./server auto-install

ENTRYPOINT ["/steam/server"]

