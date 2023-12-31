#!/bin/bash 
 
current=$(cat $HOME/.config/waybar/themes/current.txt);
path="$HOME/.config/swaylock/themes/$current/config";
echo $path
case $current in
  dark-blue)
  swaylock --config $path
  ;;

  dark-mode)
  swaylock --config $path
  ;;

  surface)
  swaylock --config $path
  ;;

  celeste)
  swaylock --config $path
  ;;

  sunshine)
  swaylock --config $path
  ;;

  decay)
  swaylock --config $path
  ;;
esac


