FROM maven:3.6.3-jdk-11-slim

ARG USER_CURRENT=jenkins
ARG USERID_CURRENT=10050
ARG GROUP_CURRENT=jenkins
ARG GROUPID_CURRENT=10051
ARG GROUP_DOCKER_GID=998

USER root
# add group docker inside this container to use docker in docker
RUN groupadd -g ${GROUP_DOCKER_GID} docker \
    && groupadd -g ${GROUPID_CURRENT} ${GROUP_CURRENT} \
    && useradd -u ${USERID_CURRENT} -g ${GROUPID_CURRENT} ${USER_CURRENT} \
    && usermod -a -G docker ${USER_CURRENT}

RUN apt-get update && apt-get install -y \
        fontconfig-config \
        graphviz \
        libfreetype6 \
    && rm -rf /var/lib/apt/lists/*

USER ${USER_CURRENT}
