#!/bin/bash

upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "percentage:\|time to full:"
