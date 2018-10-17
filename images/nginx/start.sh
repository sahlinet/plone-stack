#!/usr/bin/env bash

sed -i -e "s|FRONTEND_SERVER|$FRONTEND_SERVER|g; s|SITE_ID|$SITE_ID|g" /etc/nginx/conf.d/plone.conf

if [ -n "$FRONTEND_SCHEME" ]; then
    sed -i -e "s|FRONTEND_SCHEME|$FRONTEND_SCHEME|g" /etc/nginx/conf.d/plone.conf
else
    sed -i -e "s|FRONTEND_SCHEME|https|g" /etc/nginx/conf.d/plone.conf
fi
if [ -n "$FRONTEND_PORT" ]; then
    sed -i -e "s|FRONTEND_PORT|$FRONTEND_PORT|g" /etc/nginx/conf.d/plone.conf
else
    sed -i -e "s|FRONTEND_PORT|443|g" /etc/nginx/conf.d/plone.conf
fi

exec nginx -g 'daemon off;'
