#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"


$HOME/.config/polybar/launch.sh &
#setxkbmap -layout be
feh --bg-scale ~/.config/bspwm/wall.png &
xsetroot -cursor_name left_ptr &
sxhkd &
nm-applet &
variety -q &
pamac-tray &
nm-applet &
volumeicon &
xfce4-power-manager &
numlockx on &
conky -c $HOME/.config/bspwm/system-overview &
compton --config $HOME/.config/bspwm/compton.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
#nitrogen --restore &
#caffeine &
#dropbox &
#blueberry-tray &
#thunar &
#insync start &
