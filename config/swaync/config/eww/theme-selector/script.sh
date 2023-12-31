#!/bin/bash
theme=$1
path="$HOME/.config/waybar/themes/$theme"
current="$HOME/.config/waybar/themes/current.txt"

killall swaybg waybar mpvpaper
sleep 0.05
echo $1 > $current

case $1 in
  dark-blue)
  swww img --transition-type outer --transition-pos 1920,1 --transition-step 180 "/home/michi/Pictures/wallpapers/$theme.png"
  waybar -s "$path/style.css" -c "$path/config" &
  ;;

  dark-mode)
  swww img --transition-type outer --transition-pos 1920,1 --transition-step 180 "/home/michi/Pictures/wallpapers/$theme.png"
  waybar -s "$path/style.css" -c "$path/config" &
  ;;

  surface)
  swww img --transition-type outer --transition-pos 1920,1 --transition-step 180 "/home/michi/Pictures/wallpapers/$theme.png"
  waybar -s "$path/style.css" -c "$path/config" &
  ;;

  sunshine)
  swww img --transition-type outer --transition-pos 1920,1 --transition-step 180 "/home/michi/Pictures/wallpapers/$theme.png"
  waybar -s "$path/style.css" -c "$path/config" &
  ;;
  
  celeste)
  waybar -s "$path/style.css" -c "$path/config" &
  # swww img --transition-type outer --transition-pos 1920,1 --transition-step 180 "/home/michi/Pictures/wallpapers/$theme.png"
  mpvpaper -o "no-audio --loop-file=yes" '*' /home/michi/Videos/finally.mp4
  ;;

  decay)
  waybar -s "$path/style.css" -c "$path/config" &
  mpvpaper -o "no-audio --loop-file=yes" '*' /home/michi/Videos/decay.mp4
  ;;
esac

eww close theme-selector
