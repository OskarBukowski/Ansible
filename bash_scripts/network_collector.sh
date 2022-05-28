#!/bin/bash


hname=$(hostname)

netstat_file="netstat_$hname.txt"
lsof_file="lsof_$hname.txt"



rm /opt/"$netstat_file" > /dev/null 2>&1
echo >> /opt/"$lsof_file"
echo "--------------------------" >> /opt/"$netstat_file"
echo "$hname" > /opt/"$netstat_file"
echo "--------------------------" >> /opt/"$netstat_file"
echo >> /opt/"$netstat_file"
netstat -tulnp >> /opt/"$netstat_file"


rm /opt/"$lsof_file"> /dev/null 2>&1
echo >> /opt/"$lsof_file"
echo "--------------------------" >> /opt/"$lsof_file"
echo "$hname" > /opt/"$lsof_file"
echo "--------------------------" >> /opt/"$lsof_file"
echo >> /opt/"$lsof_file"
lsof -i >> /opt/"$lsof_file"


