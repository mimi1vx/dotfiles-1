#!/bin/bash
#export WINDOW_MANAGER=xmonad
export _JAVA_AWT_WM_NONREPARENTING=1

[[ -f "$HOME/.pathrc" ]] && source $HOME/.pathrc
# Load resources
 
#xrdb -merge ~/.Xresources
 
# Set up an icon tray
 
trayer --edge top --align right --SetDockType true --SetPartialStrut true \
 --expand true --width 10 --transparent true --tint 0x191970 --height 12 &
 
# Set the background color<

dropbox start -i &
 
xsetroot -solid black
#gconftool --type string --set /desktop/gnome/background/picture_filename "/path/to/your/image.png
 
# Fire up apps
 
#gajim &
 
#xscreensaver -no-splash &
#gnome-screensaver &
 
if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi
 
if [ -x /usr/bin/gnome-power-manager ] ; then
   sleep 3
   gnome-power-manager &
fi
 
#xmonad-gnome-nopanel
#exec xmonad
exec gnome-session --session xmonad-gnome-nopanel "$@"