#!/bin/bash
while true;do
	qstat -ext -u $USER
	printf  '%s' "Press ctrl+c to stop me!"
	sleep 5
done;
