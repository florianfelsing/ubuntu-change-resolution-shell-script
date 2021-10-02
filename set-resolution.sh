#!/bin/bash

RESOLUTION="2560 1440 60" 
OUTPUT="Virtual1"

CONNECTED=$(xrandr --current | grep -i $OUTPUT | cut -f2 -d' ')

if [ "$CONNECTED" = "connected" ]; then
    MODELINE=$(cvt $RESOLUTION | cut -f2 -d$'\n')
    MODEDATA=$(echo $MODELINE | cut -f 3- -d' ')
    MODENAME=$(echo $MODELINE | cut -f2 -d' ')

    echo "Adding mode - " $MODENAME $MODEDATA
    echo "xrandr --newmode " $MODENAME $MODEDATA
    echo "xrandr --addmode " $OUTPUT $MODENAME
    echo "xrandr --output " $OUTPUT " --mode " $MODENAME
    
    xrandr --newmode $MODENAME $MODEDATA
    xrandr --addmode $OUTPUT $MODENAME
    xrandr --output $OUTPUT --mode $MODENAME
else
    echo "There was no monitor detected."
fi
