#!/bin/bash


hname=$(curl ifconfig.me)

echo "$hname" > /tmp/netstat_.txt
echo >> /tmp/netstat_.txt
netstat -tulnp >> /tmp/netstat_.txt
