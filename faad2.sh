#!/bin/bash
#Shared Host ffmpeg installation script

RED='\033[01;31m'
RESET='\033[0m'
_DOWNLOAD_URL='http://citylan.dl.sourceforge.net/project/faac/faad2-src/faad2-2.7'
_package='faad2-2.7.tar.gz'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET

rm -rf $HOME/src/*
cd $HOME/src
rm -rf faad2*
curl -O $_DOWNLOAD_URL/$_package
tar -xvzf $_package
cd faad2/
./bootstrap
./configure --prefix=$HOME  --with-mpeg4ip
make -j$cpu
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
