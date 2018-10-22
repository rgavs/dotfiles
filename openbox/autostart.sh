#!/bin/bash
#autostart
xset -b
xinput set-prop 12 273 1
xinput set-prop 12 277 1
# grid layout
obsetlayout 0 2 2 0
# background (wallpaper) image
sh /home/ryan/.fehbg
# panel
tint2 -c /home/ryan/.config/tint2/tint2rc &
# audio control panel item
alsa-tray --card=hw:1 +tray &

cd /home/ryan/.config/conky
conky -c ./conkyrc -d &
cd /home/ryan/

xflux -z 18901 &
compton --config /home/ryan/.config/compton.conf -b &
urxvt &
chromium &
