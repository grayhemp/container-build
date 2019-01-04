FROM alpine@sha256:621c2f39f8133acb8e64023a94dbdf0d5ca81896102b9e57c0dc184cadaf5528 AS base

RUN set -x \
  && apk add --no-cache bash ca-certificates git make

ENV \
  download_url='https://github.com/genuinetools/img/releases/download/v0.5.6/img-linux-amd64' \
  sha256_sum='f5d686465a7463c296e94634bd9597af58544ead924567c9128a4ee352591bf1'

RUN set -x \
  && wget -nv -O /usr/local/bin/img "${download_url}" \
  && echo "${sha256_sum}  /usr/local/bin/img" | sha256sum -c - \
  && chmod +x /usr/local/bin/img

COPY scripts/imgh /usr/local/bin/imgh

WORKDIR /mnt/workspace
