#!/bin/sh

# directory where script is stored, taken from
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Using $DIR"

#~/bin contains custom goodies
cp -r ~/bin $DIR

#~/.config
mkdir -p $DIR/.config
cp -r ~/.config/htop $DIR/.config
cp -r ~/.config/gtk-3.0 $DIR/.config

# dhex, hex editor
cp ~/.dhexrc $DIR

# dir_colors
cp ~/.dir_colors $DIR

# git
cp ~/.gitconfig $DIR
cp ~/.gitk $DIR

# gtk 2.0
cp ~/.gtkrc-2.0 $DIR

# irssi
# cp -r ~/.irssi $DIR

# urxvt
cp -r ~/.urxvt $DIR

# VIM
cp -r ~/.vim $DIR

# X
cp ~/.Xauthority	$DIR
cp ~/.xbindkeysrc	$DIR
cp ~/.xinitrc		$DIR
cp ~/.Xresources 	$DIR
cp ~/.xscreensaver 	$DIR

# zsh
# cp -r ~/.rvm   $DIR
cp ~/.zprofile 	$DIR
cp ~/.zshrc	$DIR
cp ~/.zshrc.zni $DIR

# /etc/
mkdir -p $DIR/etc
cp  -r /etc/X11 $DIR/etc

# Commit to git
#git add -A
#git commit -m "Automatic commit"
#git push
