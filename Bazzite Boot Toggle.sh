#!/bin/bash

FILE="/etc/bazzite/desktop_autologin"
count=1

while [ $count -le 2 ]; do
if [ -f "$FILE" ]; then
    echo "Bazzite is set to boot to Desktop Mode."
    read -p "Do you want to toggle this to auto boot to Game Mode instead? (Y/n): " choice

    if [[ "$choice" == "n" || "$choice" == "N" ]]; then
        echo "No changes made."
        sleep 2
        exit
        ((count++))
    elif [[ "$choice" == "" || "$choice" == "y" || "$choice" == "Y" ]]; then
        sudo rm "$FILE"
        echo "Switched to auto boot to Game Mode."
        sleep 2
        exit
        ((count++))
    else
        echo "Invalid input"
    fi
else
    echo "Bazzite is set to boot to Game Mode."
    read -p "Do you want to toggle this to auto boot to Desktop Mode instead? (Y/n): " choice

    if [[ "$choice" == "n" || "$choice" == "N" ]]; then
        echo "No changes made."
        sleep 2
        exit
        ((count++))
    elif [[ "$choice" == "" || "$choice" == "y" || "$choice" == "Y" ]]; then
        sudo touch "$FILE"
        echo "Switched to auto boot to Desktop Mode."
        sleep 2
        exit
        ((count++))
    else
        echo "Invalid input"
    fi
fi
done
