#!/bin/bash



sudo su
netstat_files=$(find /opt/ -name "netstat*.txt")
rm /opt/report_netstat.txt > /dev/null 2>&1

for file in $netstat_files; do
  cat $file >> /opt/report_netstat.txt
  echo >> /opt/report_netstat.txt
done


lsof_files=$(find /opt/ -name "lsof*.txt")
rm /opt/report_lsof.txt > /dev/null 2>&1

for file in $lsof_files; do
  cat $file >> /opt/report_lsof.txt
  echo >> /opt/report_lsof.txt
done


find /opt/ -name "lsof*.txt" -exec rm {} \;
find /opt/ -name "netstat*.txt" -exec rm {} \;


