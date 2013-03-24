#!/bin/bash -x

workplace=$HOME #default target workplace

if [ $# -ne 0 ];then
  echo "Usage - $0 "
  exit 1
fi

source $PWD/Emacs-config/install.sh
source $PWD/Tmux-config/install.sh
