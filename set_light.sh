#!/usr/bin/env bash

default='solarized'
dir=$(dirname $0)

if [ -d $dir/colors/$1 ]; then
  theme=$1
else
  echo "Theme $1 not found, using $default"
  theme=$default
fi

if [ "$#" -ne 1 ]; then
  theme=$default
fi

PROFILE=${1:-Default}

PALETTE_STR=$(cat ./colors/palette_light)
PALETTE_STR_GCONF="\"${PALETTE_STR}\""
dconf write "/apps/guake/style/font/palette" $PALETTE_STR_GCONF
