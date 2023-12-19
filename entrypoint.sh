#!/bin/bash

set -eu

if [ -f /opendkim/opendkim.conf ]; then
  cp /opendkim/opendkim.conf /etc/opendkim/opendkim.conf
fi

if [ -f /opendkim/KeyTable ]; then
  cp /opendkim/KeyTable /etc/opendkim/KeyTable
fi

if [ -f /opendkim/SigningTable ]; then
  cp /opendkim/SigningTable /etc/opendkim/SigningTable
fi

if [ -f /opendkim/TrustedHosts ]; then
  cp /opendkim/TrustedHosts /etc/opendkim/TrustedHosts
fi

exec "$@"
