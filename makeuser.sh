#!/bin/bash
# Error message display if arguments invalid
#
if [$* = 0]; then
	echo "Invalid argument, please retry"
	exit 1
fi
#
# 
#
echo Setting things up...
# Make a New User and Add them to group
groupadd --gid 710 NewUsers && useradd -m -u 709 -g 710 -c "Annabanana" Anna || exit
echo Welcome to Group 710
#
#
passwd Anna
#
#
#Give permission to the files
chown -R +709:710 /home/Anna || exit
#
#Making directories if they don't exist already
#
#
if [cat /etc/profile=1 ];
then
	exit
else
	mkdir /etc/profile
fi
#
#
#

if [cat /etc/bashrc=1];
then
	exit
else
	mkdir /etc/bashrc
fi
#
#



