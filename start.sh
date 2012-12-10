#!/bin/bash
#Shared Host FFMPEG installation script

#  Copyright (C) 2000-2007 Sherin.in. All rights reserved.
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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


















