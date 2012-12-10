#!/bin/bash
#Shared Host ffmpeg installation script

RED='\033[01;31m'
RESET='\033[0m'
_DOWNLOAD_URL='http://ffmpeg.org/releases'
_package='ffmpeg-1.0.1.tar.gz'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET

rm -rf $HOME/src/*
cd $HOME/src
curl -O $_DOWNLOAD_URL/$_package
tar -xvzf $_package
cd ffmpeg-1.0.1/
./configure --prefix=$HOME --enable-libmp3lame --enable-shared  \
	--enable-libogg --enable-libvorbis --enable-libamr-nb  \
	--enable-liba52 --enable-libfaac --enable-libfaad --enable-pthreads \
	--enable-libamr-wb --enable-gpl --enable-libtheora   \
	--enable-pthreads --extra-cflags=-I$HOME/include  \
	--extra-ldflags=-L$HOME/lib
make -j$cpu
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
