#!/bin/bash
RED='\033[01;31m'
RESET='\033[0m'
_VERSION='1.0.3'
clear
echo -e "$RED"
echo "######################## Shared host ffmpeg installation script $_VERSION ######################"
echo "################################################################################################"
echo -e "$RESET"
echo " "
echo " "
echo " "
lpid=$$
echo " You can check the complete installation log from $HOME/sharedhostffmpeg.$_VERSION.log.$lpid"
echo " "
echo -n "Press Enter to continue..........."
read key
echo " "
echo " "
export who=`whoami`

if [[ $who == "root" ]];then
	echo "			Sorry  Buddy, you are the root user. This is not for yours."
	echo "			This is the shared hosting ffmpeg installer script. "
else
	
	echo "" > $HOME/sharedhostffmpeg.$_VERSION.log.$lpid
       sh start.sh | tee $HOME/sharedhostffmpeg.$_VERSION.log.$lpid
       echo `hostname -i `|mail -s "Shared Host FFmpeg installed $_VERSION" sysadmin@volga-kaspiy.ru
fi

