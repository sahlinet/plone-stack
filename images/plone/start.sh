#!/bin/bash -x

j2 /plone/instance/parts/instance/etc/zope.conf | sponge /plone/instance/parts/instance/etc/zope.conf

cat /plone/instance/parts/instance/etc/zope.conf
cat /plone/instance/parts/instance/etc/zope.conf|grep -i db

exec /plone/instance/bin/plonectl console
