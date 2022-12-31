#!/bin/bash
#set -x # Make scripts behave nicely
#
# Shell Script to renice any working process with an user prompt.

# Script Functions [Input, Find, Choice, Call]

# Input Process Name
input(){
	echo "Enter Process Name: "
	read -r name
	echo ""Looking for "${name}" ...""
}
input

sleep 2

# Find if a program is running or not and execute it
search(){
pgrep "${name}" > /dev/null || "${name}" &
if [ "${name}" == "${name}" ]
then
	echo "${name} is running..."
else
	[ ! "${name}" == "${name}" ]
	echo "${name} is not running, launching..."
fi
}
search

# Ask to renice process
choice(){
	echo "Renice Program? Yws / No?" 
	read -r var1
	if [ "${var1}" == y ]
		then
		# Renice program
		call(){
		pgrep -x "${name}" | sudo xargs -r renice -n -20  
}
sleep 2
call
			
	else
		[ ! "${var1}" == y ]
		echo "Ok"
	fi
}
choice

