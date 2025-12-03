if ! pgrep -x "wlogout" >/dev/null; then
    wlogout -b 5 -m 450
else
    pkill wlogout
fi
