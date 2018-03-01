#!/usr/bin/env bash

dir=$(dirname $0)

PROFILE=${1:-Default}

PALETTE_STR=$(cat ./colors/palette_dark)
PALETTE_STR_GCONF="\"${PALETTE_STR}\""
dconf write "/apps/guake/style/font/palette" $PALETTE_STR_GCONF
