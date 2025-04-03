FROM node:latest
RUN apt-get update \
    && apt-get install -y cmake libopenblas-dev patchelf \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/3rd-devs
USER node
RUN curl -fsSL https://bun.sh/install | bash
ENV PATH="/home/node/.bun/bin:$PATH"
