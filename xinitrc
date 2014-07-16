#!/bin/sh
# .f - X initialization

# colemak
setxkbmap us -variant colemak

# REAL MEN SHIFT ALL THE WAY
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

xsetroot -cursor_name left_ptr
xset +fp /usr/X11R6/lib/X11/fonts/util

# urxvt daemon
urxvtd -q -o -f &

# for maximum paranoia
[[ `head -n 1 $HOME/.fehbg` == feh* ]] && head -n 1 $HOME/.fehbg | sh || \
	xsetroot -solid \#333

exec 2bwm
#exec swm
