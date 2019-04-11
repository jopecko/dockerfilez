FROM anapsix/alpine-java:8u202b08_jdk_unlimited

# https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt
ARG SBT_LAUNCHER_URL="https://git.io/vz6Y8"

RUN set -x \
    && apk -- update add --no-cache --virtual wget \
    && wget -O /usr/lib/sbt $SBT_LAUNCHER_URL \
    && chmod 0755 /usr/lib/sbt \
    && apk add --no-cache openssh \
    && apk add --no-cache git \
    && apk add --no-cache docker \
    && apk add --no-cache openrc \
    && rc-update add docker boot \
    && mkdir -p /drone \
    && rm -fr /var/cache/apk/* \
    && mkdir -p /root/.docker

COPY sbt.boot /sbt.boot
COPY bin /usr/local/bin

ENV JAVA_OPTS="-XX:+UseContainerSupport -Dfile.encoding=UTF-8"
