#!/bin/bash
# Shell program which gets executed the moment the user logs in, it should
# display the message "Good morning", "Good Afternoon", or "Good Evening"
# depnding upon the time which the user logs in.
# =====================================================================
# Q. How to run this script as soon as user logs in?
# A. Open your bash startup file aka profile file - ~/.bash_profile
# and put path to this script in file as follow:
# . /path/to/greetings.sh
# -----------------------------------------------
# Copyright (c) 2005 nixCraft project <http://cyberciti.biz/fb/>
# This script is licensed under GNU GPL version 2.0 or above
# -------------------------------------------------------------------------
# This script is part of nixCraft shell script collection (NSSC)
# Visit http://bash.cyberciti.biz/ for more information.
# -------------------------------------------------------------------------
 
# get current hour (24 clock format i.e. 0-23)
hour=$(date +"%H")
 
# if it is midnight to midafternoon will say G'morning
if [ $hour -ge 0 -a $hour -lt 12 ]
then
  greet="Good Morning, Kristen!!🌞 \nTime to karate chop this 🪓"
# if it is midafternoon to evening ( before 6 pm) will say G'noon
elif [ $hour -ge 12 -a $hour -lt 18 ] 
then
  greet="I hope you are having a good afternoon, Kristen. \nRemember, you shine like a ✨💫"
else # it is good evening till midnight
  greet="Good evening, Beautiful!\nDon't forget...I love you.💕💕"
fi
 
# display greet
echo $greet