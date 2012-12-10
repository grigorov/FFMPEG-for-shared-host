#!/bin/bash
#Shared Host ffmpeg installation script

RED='\033[01;31m'
RESET='\033[0m'
_DOWNLOAD_URL='http://webm.googlecode.com/files'
_package='libvpx-v1.1.0.tar.bz2'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET

rm -rf $HOME/src/*
cd $HOME/src
curl -O $_DOWNLOAD_URL/$_package
tar -xvjf $_package
cd libvpx-v1.1.0
./configure --prefix=$HOME --enable-shared

make 
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2