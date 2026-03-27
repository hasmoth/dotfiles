#!/bin/bash
tmpbg="/tmp/tmpbg.png"
scrot -o "$tmpbg"
convert "$tmpbg" -blur 4x8 "$tmpbg"
i3lock -i "$tmpbg"
