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
        time.sleep(180)
        print ("End : %s" % time.ctime())
