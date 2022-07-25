#!/usr/bin/env bash

# check if there's a controller connected
if lsusb | grep -i xbox > /dev/null;
	then
		# set the power variables
		if upower -i /org/freedesktop/UPower/devices/battery_gip0x0 > /dev/null;
			then
				BATTERY_LEVEL=$(upower -i /org/freedesktop/UPower/devices/battery_gip0x0 | grep battery-level | awk '{print $2}')
				BATTERY_PERCENTAGE=$(upower -i /org/freedesktop/UPower/devices/battery_gip0x0 | grep percentage | awk '{print $2}')
				if [ "$BATTERY_LEVEL" = unknown ];
				then
					exit 1
				else
					echo "" > /dev/null
				fi
			else
				exit 1
		fi
else
	exit 3
fi

if lsusb | grep -i "xbox one controller" > /dev/null;
	then
		echo " $BATTERY_PERCENTAGE"
	else
		if [ "$BATTERY_LEVEL" = full ];
			then
				echo " $BATTERY_PERCENTAGE"
		elif [ "$BATTERY_LEVEL" = high ];
			then
				echo " $BATTERY_PERCENTAGE"
		elif [ "$BATTERY_LEVEL" = normal ];
			then
				echo " $BATTERY_PERCENTAGE"
		elif [ "$BATTERY_LEVEL" = low ];
			then
				echo " $BATTERY_PERCENTAGE"
		elif [ "$BATTERY_LEVEL" = unknown ]
			then
				exit 1
		else
			exit 1
		fi
fi

