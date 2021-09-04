#!/usr/bin/env bash

if [[ $# -eq 0 ]] ; then
  cut -d ':' -f1 ~/.warprc
else
  location=$(grep "$1" ~/.warprc | cut -f1 -d ':' --complement)
  urxvt -cd "${location/\~/$HOME}" & 
fi
