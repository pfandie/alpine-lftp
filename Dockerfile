FROM alpine:latest

LABEL maintainer="Hans Mayer <hans.mayer83@gmail.com>"

RUN apk update && apk upgrade && apk add --no-cache --update lftp; \
    lftp --version

ENTRYPOINT [ "/usr/bin/lftp" ]
