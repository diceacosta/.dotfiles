#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10

dir="$HOME/.config/rofi/emoji-picker/type-3"
theme='style-1'

## Run

rofi \
    -modi emoji\
    -show emoji \
    -kb-secondary-copy "" \
    -kb-custom-1 Ctrl+c\
    -markup-rows \
    -emoji-format $'<span size="32000">{emoji}</span>\n<span size="8000">{name}</span>'\
    -theme ${dir}/${theme}.rasi