FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    bash coreutils vim nano \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m ctfplayer && echo "ctfplayer:ctfpass" | chpasswd
WORKDIR /home/ctfplayer

COPY start.sh .
COPY level1/ ./level1/
COPY level2/ ./level2/

RUN chmod +x start.sh && chown -R ctfplayer:ctfplayer /home/ctfplayer

USER ctfplayer
WORKDIR /home/ctfplayer

CMD ["/bin/bash"]
