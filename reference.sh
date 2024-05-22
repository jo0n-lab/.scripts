#!/bin/bash

read $1
firefox -new-tab "https://www.acmicpc.net/problem/$1" &2>/dev/null &
#xdg-open "https://www.acmicpc.net/problem/$no"
exit 0
