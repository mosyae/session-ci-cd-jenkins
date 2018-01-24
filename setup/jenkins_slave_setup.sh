#!/bin/bash
# Run under ROOT/sudo

apt-get install default-jre -qq
apt-get install default-jdk -qq

#docker must be installed on slave
#local docker repositiry musy be installed on slave
#local docker-compose must be installed on the slave
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
