#!/bin/bash -x

cmd=$(which emacs)

config=".emacs"   
d_config=".emacs.d"

config_at_work=$workplace/$config
config_at_project=$PWD/Emacs-config/$config

d_config_at_work=$workplace/$d_config
d_config_at_project=$PWD/Emacs-config/$d_config

if [ -z $cmd ];then
  echo "You have to install emacs first!"
  exit 1
else
  echo "emacs config will add to $workplace" 
fi

if [ -f $config_at_work ]; then
  cp $config_at_work $config_at_work.original
  rm $config_at_work
  echo "Your workplace is already have a $config config file."
else
  echo "."
fi

ln -s $config_at_project $config_at_work

if [ -d $d_config_at_work ]; then
  echo "Your workplace is already have a $d_config config folder."
  cp -fr $d_config_at_work $d_config_at_work.original
  rm -fr $d_config_at_work
elif [ -h $d_config_at_work ]; then
  echo "there is a link."
  cp $d_config_at_work $d_config_at_work.original
  rm $d_config_at_work
else
  echo "I can do the soft link."
fi

ln -s $d_config_at_project $d_config_at_work  
