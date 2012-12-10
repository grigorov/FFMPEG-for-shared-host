#!/bin/bash
#Shared Host FFMPEG installation script

RED='\033[01;31m'
RESET='\033[0m'
export PATH=$HOME/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib:/usr/local/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$HOME/lib:/usr/local/lib:$LIBRARY_PATH
export CPATH=$HOME/include:/usr/local/include:$CPATH
export TMPDIR=$HOME/tmp

#presetup
sh presetup.sh
#libpng
sh libpng.sh
#libjpeg
sh libjpeg.sh
#lame
sh lame.sh
#codecs
sh codecs.sh
#libogg
sh libogg.sh
#libvorbis
sh libvorbis.sh
#vorbis-tools
sh vorbis-tools.sh
#libtheora
sh libtheora.sh
#amrnb
sh amrnb.sh
#amrwd
sh amrwb.sh
#facc
sh facc.sh
#faad2
sh faad2.sh
#ffmpeg
sh ffmpeg.sh
if [ -e "$HOME/bin/ffmpeg" ]; then
	echo " "
else
	echo " "
	echo " "
	echo -e $RED"	FFMPEG installation Failed :( "$RESET
	echo " "
	echo " "
	exit
fi
#postinstall
sh post.sh


















