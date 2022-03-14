#!/bin/bash

HOST="99.8.8.8"
ping -c 1 $HOST
if [ "$?" -eq "0" ] #if exit code is OK 0, then...
then
	echo "$HOST  yeeey, it is reachable"
else
	echo "$HOST  hmm, something went wrong: unreachable"
fi















