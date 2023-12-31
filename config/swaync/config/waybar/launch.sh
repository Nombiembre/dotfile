#!/bin/bash
theme=$(cat "$HOME/.config/waybar/themes/current.txt")
$HOME/.config/eww/theme-selector/script.sh $theme
