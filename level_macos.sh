#!/bin/bash

read $1
open -a Safari "https://solved.ac/search?query=$1"
exit 0

