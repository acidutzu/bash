#!/bin/bash
CHECK=$0
SERVICE=$1
DATE=`date`
OUT=$(ps aux | grep -v grep | grep -v $CHECK |grep $1)
echo $OUT
if [ "${#OUT}" -gt 0 ] ;
then echo "$DATE: $SERVICE service is running"
else echo "$DATE: $SERVICE is not running"
#/etc/init.d/$1 restart
fi
