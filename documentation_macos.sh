#!/bin/bash

read $1
open -a Safari "https://en.cppreference.com/w/cpp/container/$1"
exit 0

