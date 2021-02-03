# FROM alpine:3.13.1
FROM ubuntu:20.04

# RUN apk add --no-cache curl jq coreutils
RUN apt-get update && apt-get install -y curl jq \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /tf-helper && cd /tf-helper && \
  curl -LJ https://github.com/hashicorp-community/tf-helper/archive/v0.2.9.tar.gz -o tfh.tar.gz && \
  tar -xvf tfh.tar.gz --strip 2 && \
  rm -rf tfh.tar.gz

ENV PATH=/tf-helper/bin:$PATH

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]