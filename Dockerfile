FROM alpine:latest

ENV CQLSH_VERSION=5.0.4

RUN apk add --update --no-cache \
    python \
    py-pip \
  && pip install cqlsh==$CQLSH_VERSION \
  && rm -rfv /var/cache/apk/*

ENTRYPOINT ["cqlsh"]
