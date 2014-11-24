#!/bin/sh
# torrent2magnet

ts=$(which transmission-show)
[ -x "$ts" ] || { echo transmission-show needed ; exit 1 ; }

$ts -m $1 | sed -e 's/&tr.*//g'
