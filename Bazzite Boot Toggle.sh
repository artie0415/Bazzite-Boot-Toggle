#!/bin/bash

FILE="/etc/bazzite/desktop_autologin"

if [ -f "$FILE" ]; then
    notify-send 'Boot currently set to Desktop Mode'
    echo "Bazzite is set to boot to Desktop Mode."
    read -p "If you wish to toggle this to auto boot to Game Mode instead, please press enter: " choice

if [[ "$choice" == "" || "$choice" == "y" || "$choice" == "Y" ]]; then
    if sudo rm "$FILE"; then
        echo "Switched to auto boot to Game Mode."
        kdialog --msgbox 'Switched to auto boot to Game Mode.'
    else
        echo "Failed to remove $FILE (maybe sudo was canceled?)"
        kdialog --error 'Failed to switch to Game Mode.'
    fi
    sleep 2
    exit
fi

else
    notify-send 'Boot currently set to Game Mode'
    echo "Bazzite is set to boot to Game Mode."
    read -p "If you wish to toggle this to auto boot to Desktop Mode instead, please press enter: " choice

if [[ "$choice" == "" || "$choice" == "y" || "$choice" == "Y" ]]; then
    if sudo touch "$FILE"; then
        echo "Switched to auto boot to Desktop Mode."
        kdialog --msgbox 'Switched to auto boot to Desktop Mode.'
    else
        echo "Failed to create $FILE (maybe sudo was canceled?)"
        kdialog --error 'Failed to switch to Desktop Mode.'
    fi
    sleep 2
    exit
fi
fi
done