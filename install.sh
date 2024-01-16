#!/usr/bin/env bash
apt-get -y update
apt-get -y install python2
#yum -y install python2
useradd -m webtrafficgen
chmod 755 idp-traffgen.py
cp idp-trafficgen.py /usr/bin/
chmod 755 idp-trafficgen.service
cp idp-traffgen.service /etc/systemd/system/
sudo systemctl daemon-reload
systemctl start idp-traffgen.service
systemctl status idp-traffgen.service
systemctl is-active idp-traffgen.service
systemctl enable idp-traffgen.service
