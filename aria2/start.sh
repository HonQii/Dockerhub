#!/bin/sh

touch /aria2/conf/aria2.session

darkhttpd /aria-ng --port 80 &
darkhttpd /aria2/downloads --port 8080 &
aria2c --conf-path=/aria2/conf/aria2.conf
