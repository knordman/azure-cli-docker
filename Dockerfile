FROM microsoft/azure-cli

ARG DOCKER_CHANNEL=stable
ARG DOCKER_VERSION=17.12.0-ce

RUN wget \
    "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz" \
    -q -O docker.tgz && \
       tar -xvf docker.tgz && \
       mv docker/docker /usr/local/bin/ && \
       rm -rf docker && \
       rm docker.tgz
