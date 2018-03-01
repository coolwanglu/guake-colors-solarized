#!/usr/bin/env bash

dir=$(dirname $0)

PROFILE=${1:-Default}

#######
# for guake
PALETTE_STR=$(cat ./colors/palette_light)
PALETTE_STR_GCONF="\"${PALETTE_STR}\""
dconf write "/apps/guake/style/font/palette" $PALETTE_STR_GCONF

# gbase3
# gbase00
