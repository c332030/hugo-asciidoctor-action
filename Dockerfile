FROM ubuntu

RUN apt install -y \
    curl  \
    git openssh-client  \
    hugo asciidoctor

ADD *.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]