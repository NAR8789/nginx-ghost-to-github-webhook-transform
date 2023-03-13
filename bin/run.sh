#!/bin/sh -x

/usr/sbin/nginx -p `pwd` -c nginx.conf -g 'daemon off;'
