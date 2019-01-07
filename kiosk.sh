#!/bin/bash
# Run this script in display 0 - the monitor
export DISPLAY=:0
# Hide the mouse from the display
unclutter &
# If Chrome crashes (usually due to rebooting), clear the crash flag so we don't have the annoying warning bar
sed -i 's/"exited_cleanly":false/"exited_cleanly":false/' ~/.config/chromium/'Local State'
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences
# Run Chromium and open tabs
link_url=https://bo.nextschool.io/monitor/terminal
while true;
do ping -c1 www.google.com > /dev/null && echo 'online' && /usr/bin/chromium-browser --disable-translate --noerrordialogs --kiosk --disable-session-crashed-bubble $link_url
sleep 2s
done