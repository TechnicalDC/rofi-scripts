#!/bin/bash

# 		__        __                         __          
# .-----.--.--.|__|.----.|  |--.--------.---.-.----.|  |--.-----.
# |  _  |  |  ||  ||  __||    <|        |  _  |   _||    <|__ --|
# |__   |_____||__||____||__|__|__|__|__|___._|__|  |__|__|_____|
#    |__|    

# Author: Dilip Chauhan
# Github: https://github/TechnicalDC

# This script requires rofi and qutebrowser to work (if you prefer other browser than replace qutebrowser command with
# command that launch your browser)

url=$(cat ~/.config/qutebrowser/quickmarks | cut -d' ' -f'2' | rofi -dmenu -p 'open')
if [ ! -v ${url} ]; then
  qutebrowser $url
else
  notify-send -a "Rofi" "Not selected anything" -i 'dialog-error' -t 5000 
fi

