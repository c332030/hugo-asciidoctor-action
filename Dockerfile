FROM ubuntu

RUN apt update && \
    apt install -y \
      sudo curl \
      git openssh-client \
      hugo asciidoctor

ADD *.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
