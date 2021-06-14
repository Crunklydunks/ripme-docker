FROM alpine
MAINTAINER crunklydunks

ENV RIPME_VER 1.7.95

RUN set -xe \
    && apk add --no-cache ca-certificates \
			openjdk8-jre \
			wget \
    && mkdir /app \
    && wget "https://github.com/RipMeApp/ripme/releases/download/$RIPME_VER/ripme.jar" -P /app

VOLUME /data
VOLUME /root/.config
WORKDIR /data

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
