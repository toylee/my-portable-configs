#!/bin/bash -x

cmd=$(which Your_Program)

config="Config_name"
config_at_work=$workplace/$config
config_at_project=$PWD/Your_Config_Folder/$config

if [ -z $cmd ];then
  echo "You have to install Your_Program first!"
  exit 1
else
  echo "Your_Program config will add to $workplace" 
fi

if [ -f $config_at_work ]; then
  echo "Your workplace is already have a $config config file."
  cp $config_at_work $config_at_work.original
  rm $config_at_work
else
  echo "."
fi

ln -s $config_at_project $config_at_work
