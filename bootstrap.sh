#!/bin/bash

sed -i "s/ENABLED=0/ENABLED=1/" /etc/default/haproxy

service haproxy start && tail -f /dev/null
