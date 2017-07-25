#!/bin/bash

if [ ! -d "/home/site/wwwroot" ]; then
  mkdir -p /home/site/wwwroot
fi

chown -R www-data.www-data /home/site/wwwroot
chmod -R 775 /home/site/wwwroot

# Start NGINX
if [ -d "/etc/nginx" ]; then
  exec /usr/bin/supervisord -n -c /etc/supervisord.conf
fi
