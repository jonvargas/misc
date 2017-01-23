#! /bin/bash

#
# Sets the correct resolution for AOC 29in screen at session startup
# because it is not recognized propertly. The modeline here, was obtained
# by using "get-edid | parse-edid"
#

# Exit if HDMI1 is NOT connected
if ! xrandr | grep "HDMI1 connected" > /dev/null ; then
	exit 0
fi

# Creates a new Mode to be added to outputs
xrandr --newmode "2560x1080@58.98hz" 181.25 2560 2608 2640 2720 1080 1083 1093 1111 +hsync -vsync

# Adds the mode to the HDMI1 outout
xrandr --addmode HDMI1 "2560x1080@58.98hz"

# Sets the mode for the HDMI1 output if connected
#xrandr --output HDMI1 --mode "2560x1080@58.98hz"
