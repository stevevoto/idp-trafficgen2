#!/usr/bin/env bash
apt-get -y install python2
yum -y install python2
useradd -m webtrafficgen
mkdir /var/lib/idp-trafficgen

cp ./web-traffic-gen.service /etc/systemd/system
systemctl daemon-reload




