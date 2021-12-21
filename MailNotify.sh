#!/bin/bash
#
# Monitor file $1 for changes
# Send an alert emai to $2 if file $1 changes
# usage: file_change_mail_alert.sh /var/log/messages

#if a inotifywait for this file is already running

if [ $(ps aux | grep inotifywait | grep -c “$1” ) -gt 0 ]; then

echo “A process monitoring the file $1 is already running: $(ps aux | grep inotifywait | grep “$1” )”;

exit 1;

fi


#if inotifywait exists

type -P inotifywait &>/dev/null || { echo "Error: This script requires inotifywait(http://wiki.github.com/rvoicilas/inotify-tools/) … apt-get install inotify-tools … " >&2; exit 1; }


#if the file exists


if [ -f $1 ]; then

echo “Monitoring file $1 for changes - sending alerts”


while inotifywait -e modify -e attrib -e move -e delete $1 -o /root/audit.log; do

sleep 1


changes="$(tail -1 $1)"

# changes="$(cat /root/audit.log)"
	
	python3 ./SendMail.py "Change in $1: $changes"
	rm /root/audit.log
	touch /root/audit.log		
done

else

echo “Error: File $1 not found”

fi
