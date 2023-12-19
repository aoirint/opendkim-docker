#!/bin/bash

set -eu

touch /var/log/mail.log

# exit soon
/usr/sbin/opendkim

tail -f /var/log/mail.log
