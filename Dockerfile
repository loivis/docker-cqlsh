FROM alpine:latest

RUN apk add --update --no-cache \
    python \
    py-pip \
  && pip install cqlsh \
  && rm -rfv /var/cache/apk/*

ENTRYPOINT ["cqlsh"]
