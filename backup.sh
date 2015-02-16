#!/bin/zsh

# directory where script is stored, taken from
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Using $DIR"

# TODO: Add rm that rms everything so we get a fresh backup everytime

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

# tmux
cp ~/.tmux.conf $DIR

# VIM
cp -r ~/.vim $DIR
cp ~/.vimrc $DIR

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
# cp -r ~/.oh-my-zsh $DIR

# /etc/
mkdir -p $DIR/etc
cp  -r /etc/X11 $DIR/etc
cp /etc/bash.bashrc $DIR/etc

# dwm
mkdir -p $DIR/dwm
cp ~/git/dwm/config.h $DIR/dwm

# Commit to git
#git add -A
#git commit -m "Automatic commit"
#git push
