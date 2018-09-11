#!/bin/bash -x
docker-compose build
docker tag plone-stack_plone:latest 192.168.99.100:30500/philipsahli/plone:0.1.1
docker push 192.168.99.100:30500/philipsahli/plone:0.1.1

cd plone
bash -x install-local.sh
cd ..
