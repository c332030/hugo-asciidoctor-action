FROM alpine

RUN apk add --no-cache \
    git openssh-client  \
    hugo asciidoctor

ADD *.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
