#!/bin/bash

BASE=/opt
PT="ProfitTrailer"

PT_DIR=$BASE/$PT
PT_ZIP=$BASE/${PT}.zip
PT_JAR=$PT_DIR/${PT}.jar
PT_START="java -jar $PT_JAR -XX:+UseConcMarkSweepGC -Xmx256m -Xms256m"


[ -d "$PT_DIR" ] || mkdir "$PT_DIR" || { echo "Error: no $PT_DIR found and could not make it. Exiting."; exit -1; }
[ -e $PT_JAR ]  || unzip -oqd $BASE $PT_ZIP $PT/${PT}.jar || { echo "Error: no $PT jar found. Exiting."; exit -1; }
cd $PT_DIR || { echo "Error: problem with $PT_DIR, cannot change to it. Exiting."; exit -1; }

# if we find any properties files in $PT_DIR we're going to assume it's been set up.
# if this is not what you want, then delete all the files in the $PT_DIR and we'll overwrite then with the defaults

pcnt=$(/bin/ls -1 $PT_DIR/*.properties 2>/dev/null|/usr/bin/wc -l)
[[ $pcnt -gt 0 ]] || { echo "No properties found, extracting.."; unzip -od $BASE $PT_ZIP; } || { echo "Error: no properties found and could not properly unzip $PT_ZIP. Exiting."; exit -1; }

# start it
$PT_START
