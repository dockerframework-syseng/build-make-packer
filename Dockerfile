ARG TAG

FROM zerolabssyseng/build-make:${TAG:-latest}
MAINTAINER "System Engineer (SysEng)"

ENV PACKER_VERSION=1.4.3

RUN apk add --update curl zip && \
    curl -sSL https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip \
        -o /tmp/packer.zip && \
    unzip /tmp/packer.zip -d /usr/bin && \
    rm /tmp/packer.zip && \
    apk del curl zip && \
    rm -rf /var/cache/apk/*
