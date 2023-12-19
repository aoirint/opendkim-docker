# syntax=docker/dockerfile:1.6
FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ARG OPENDKIM_VERSION=2.11.0~beta2-6

RUN <<EOF
  set -eu

  apt-get update

  apt-get install -y \
    "opendkim=${OPENDKIM_VERSION}"

  apt-get clean
  rm -rf /var/lib/apt/lists/*
EOF

ADD ./entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "/usr/sbin/opendkim" ]
