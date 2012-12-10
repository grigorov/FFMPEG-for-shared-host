#!/bin/bash
#Shared Host FFMPEG installation script

echo "Creating folders ...... done"
mkdir -p $HOME/{bin,etc,lib,src,include,man,share,tmp}
chmod 755 $HOME/{bin,etc,lib,src,include,man,share,tmp}
echo "Giving permissions  ...... done"
export PATH=$HOME/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib:/usr/local/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$HOME/lib:/usr/local/lib:$LIBRARY_PATH
export CPATH=$HOME/include:/usr/local/include:$CPATH
export TMPDIR=$HOME/tmp
echo "Exporting Environment Variables ...... done"
#cp -f bashrc.txt $HOME/.bashrc
#cp -f htaccess.txt $HOME/etc/htaccess.conf

