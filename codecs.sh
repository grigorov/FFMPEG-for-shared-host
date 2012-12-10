#!/bin/bash
#Shared Host ffmpeg installation script
RED='\033[01;31m'
RESET='\033[0m'
_DOWNLOAD_URL='http://www2.mplayerhq.hu/MPlayer/releases/codecs'
_package='all-20110131.tar.bz2'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET

rm -rf $HOME/src/*
cd $HOME/src
curl -O $_DOWNLOAD_URL/$_package
tar -xvjf $_package
mkdir -p $HOME/lib/codecs
cp -avrf all-20110131/* $HOME/lib/codecs/
chmod 755 $HOME/lib/codecs -R

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
