#!/usr/bin/env bash

sed -i -e "s|FRONTEND_SERVER|$FRONTEND_SERVER|g; s|SITE_ID|$SITE_ID|g" /etc/nginx/conf.d/plone.conf

exec nginx -g 'daemon off;'
