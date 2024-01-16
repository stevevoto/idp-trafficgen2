#!/usr/bin/env bash
apt-get -y install python2
yum -y install python2
useradd -m webtrafficgen
chmod 755 idp-traffgen.py
idp-trafficgen.py /usr/bin/
cp ./idp-traffgen.service /etc/systemd/system/
sudo systemctl daemon-reload
systemctl start idp-traffgen.service
systemctl status idp-traffgen.service
systemctl is-active idp-traffgen.service
systemctl enable idp-traffgen.service
