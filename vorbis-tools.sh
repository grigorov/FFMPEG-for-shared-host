#!/bin/bash
#Shared Host ffmpeg installation script

RED='\033[01;31m'
RESET='\033[0m'
_DOWNLOAD_URL='http://downloads.xiph.org/releases/vorbis'
_package='vorbis-tools-1.4.0.tar.gz'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET

rm -rf $HOME/src/*
cd $HOME/src
curl -O $_DOWNLOAD_URL/$_package
tar -xvzf $_package
cd vorbis-tools-1.4.0/
./configure --prefix=$HOME
make -j$cpu
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
