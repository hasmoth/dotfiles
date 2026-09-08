#!/bin/bash
tmpbg="/tmp/tmpbg.png"
scrot -o "$tmpbg"
convert "$tmpbg" -blur 4x8 "$tmpbg"
setxkbmap us


# i3lock starten, OHNE den Sleep-Lock-FD zu vererben
if [ -n "${XSS_SLEEP_LOCK_FD}" ] && [ -e "/dev/fd/${XSS_SLEEP_LOCK_FD}" ]; then
    i3lock --nofork --tiling --image="$tmpbg" {XSS_SLEEP_LOCK_FD}<&-
    # FD jetzt schließen → System darf suspendieren
    exec {XSS_SLEEP_LOCK_FD}<&-
else
    i3lock --nofork --tiling --image="$tmpbg"
fi

tail --pid="$(pidof -s i3lock)" -f /dev/null


# i3lock -i "$tmpbg"
