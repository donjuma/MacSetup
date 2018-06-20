##!/bin/bash
#set +x
#
#USER=`whoami`
#
## First and foremost, let's start off by installing our missing package manager
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#
#chmod +x ./restore-homebrew.sh
#./restore-homebrew.sh
#
#sudo easy_install pip
#
#sudo chown -R $USER /Users/$USER/Library/Python{,/}
#pip install --user ipython
#
#mkdir -p ~/repos
#pushd ~/repos/
#git clone https://github.com/donjuma/dotfiles
#cd dotfiles
#yes | ./extract.sh
#popd
#source ~/.bash_profile
~/dockutil.py --remove all
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for app in `cat dock.list`; do ~/dockutil.py --add /Applications/$app; done
IFS=$SAVEIFS
