#!/bin/bash -xe

j2 /plone/instance/parts/instance/etc/zope.conf | sponge /plone/instance/parts/instance/etc/zope.conf

cat /plone/instance/parts/instance/etc/zope.conf

if [ $DEBUG ]; then 
    exec /plone/instance/bin/plonectl fg
else 
    exec /plone/instance/bin/plonectl console
fi
