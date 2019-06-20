#!/bin/bash
nitrogen --set-auto $1  #use nitrogen to set wallpaper
wal -i "$1" #wal to generate colorscheme
/home/rutujsg/.config/dunst/dunst.sh
cat ~/.cache/wal/colors.css ~/.config/firefoxTheme.css > ~/.mozilla/firefox/ums00oma.default/chrome/userChrome.css

FILENAME=$(echo $1 | rev | awk -v FS='/' '{print $1}' | rev | awk -v FS='.' '{print $1}') #get filename
echo $FILENAME  #debug
oomox-cli  /home/rutujsg/.cache/wal/colors-oomox --output $FILENAME  #-p /home/rutujsg/.themes/$FILENAME
cd /home/rutujsg/scripts/zathura/  
sudo ./install.sh  #change zathura theme
notify-send "Theme Changed" "Wallpaper and colorscheme changed"
