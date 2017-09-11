FROM alpine:latest

ENV CQLSH_VERSION=5.0.4

RUN apk add --no-cache \
    python \
    py-pip \
  && pip --no-cache-dir install cqlsh==$CQLSH_VERSION

ENTRYPOINT ["cqlsh"]
