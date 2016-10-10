#!/bin/bash

sed -i "s/listen 80 default_server/listen 9000 default_server/" /etc/nginx/sites-available/default
sed -i "s/ENABLED=0/ENABLED=1/" /etc/default/haproxy

service nginx start && service haproxy start && tail -f /dev/null
