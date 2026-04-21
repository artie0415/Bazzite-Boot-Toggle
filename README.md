# Bazzite-Boot-Toggle
A basic bash script to toggle booting between Bazzite's Game Mode and Desktop Mode (For Bazzite installs with Game Mode)

This is a simple Bash script that allows Bazzite HTPC users like myself, who game both at their TV and Desk interchangeably, to run a script to toggle between having Bazzite auto boot to Desktop mode or Game mode (Steam Deck mode).

## What Does This Script Do?
After a lot of trial and error, I found that Bazzite HTPC with Game mode can be made to boot to the desktop rather than game mode if a file called desktop_autologin was created with the touch command to /etc/bazzite. This script will check if that file exists, then it will tell the user what auto boot is set to and ask if the user would like this toggled. Depending on user input, will either remove or add the file accordingly.

## Why Not Just Intall Without Game Mode
Because I use a Mac for day to day computer stuff and my PC only really gets used for games. Some games I play with a keyboard and mouse at my desk and thus would prefer to have it keep booting to desktop mode, and some games I play with a controller at my TV with my surround sound system and thus would prefer to have it keep booting to game mode.
