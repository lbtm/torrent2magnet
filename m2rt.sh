#!/bin/sh
# magnet link send to transmission-remote (ihm)

TRANSMISSION_URL="http://localhost:9091"
ID="user:mdp"

tsr=$(which transmission-remote)
[ -x "$tsr" ] || { echo transmission-remote needed ; exit 1 ; }

$tsr $TRANSMISSION_URL -n $ID -a "$1" --start
