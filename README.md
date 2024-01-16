# idp-trafficgen2
       
1.    chmod 755  this file
vi /usr/bin/idp-traffgen.py
        
#!/bin/env python3

import socket
import time
import calendar

dest_addr = '8.8.8.8'  # the destination address or hostname
dest_port = 1234 # the destination port
dest_addr2 = '1.1.1.1'  # the destination address or hostname
dest_port2 = 123 # the destination port

socket1 = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, 0)
socket2 = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, 0)

while True:
        socket1.sendto('', (dest_addr, dest_port))
        socket2.sendto('', (dest_addr2, dest_port2))
        print ("Start : %s" % time.ctime())
        time.sleep(300)
        print ("End : %s" % time.ctime())
2.       
        
vi /etc/systemd/system/idp-traffgen.service
        

[Unit]
Description=generation of IDP traffic

[Service]
# Command to execute when the service is started
User=webtrafficgen
ExecStart=/usr/bin/python2 /usr/bin/idp-traffgen.py

# optional items below
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target



3.
sudo systemctl daemon-reload
systemctl start idp-traffgen.service
systemctl status idp-traffgen.service
systemctl is-active idp-traffgen.service
systemctl enable idp-traffgen.service




