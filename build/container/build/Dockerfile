# 3.8 2018-12-19
FROM alpine@sha256:621c2f39f8133acb8e64023a94dbdf0d5ca81896102b9e57c0dc184cadaf5528 AS base

RUN set -x \
  && apk add --no-cache bash ca-certificates git make

ENV \
  download_url='https://github.com/genuinetools/img/releases/download/v0.5.4/img-linux-amd64' \
  sha256_sum='6b7b660fa0a4c4ab10aa2c2d7d586afdbc70cb33644995b0ee0e7f77ddcc2565'

RUN set -x \
  && wget -nv -O /usr/local/bin/img "${download_url}" \
  && echo "${sha256_sum}  /usr/local/bin/img" | sha256sum -c - \
  && chmod +x /usr/local/bin/img

COPY scripts/imgh /usr/local/bin/imgh

WORKDIR /mnt/workspace
