#!/bin/sh
if [ ! -f /etc/nginx/nginx.conf ]
then
  cp -Ra /etc/nginx.default/* /etc/nginx/
fi

cron
service mysql start
/usr/sbin/php5-fpm
/usr/sbin/nginx
