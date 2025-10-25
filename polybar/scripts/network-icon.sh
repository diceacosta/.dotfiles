#!/bin/bash

# Icons (use Nerd Font)
ICON_WIFI=""
ICON_ETH="󰈀"
ICON_NONE=""

# Get active interfaces
active_ifaces=$(ip -o link show up | awk -F': ' '{print $2}')

# Check for Wi-Fi (wlan0)
if echo "$active_ifaces" | grep -q "wlan0"; then
    if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
        echo "$ICON_WIFI"
    else
        echo "$ICON_NONE"
    fi

# Check for Ethernet (en*)
elif echo "$active_ifaces" | grep -q "^en"; then
    if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
        echo "$ICON_ETH"
    else
        echo "$ICON_NONE"
    fi

# Otherwise, no connection
else
    echo "$ICON_NONE"
fi
