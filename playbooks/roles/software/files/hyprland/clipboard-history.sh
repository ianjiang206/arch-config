#!/usr/bin/env bash

# Super+O clipboard history: pick a cliphist entry, copy it, then paste it into
# the focused window. Terminals paste with Ctrl+Shift+V; the class list mirrors
# TERMINAL_CLASSES in hyprland.lua.j2.
TERMINAL_CLASSES="kitty alacritty foot wezterm ghostty gnome-terminal konsole xfce4-terminal"

selection=$(cliphist list | rofi -dmenu) || exit 0
[[ -n $selection ]] || exit 0

printf '%s\n' "$selection" | cliphist decode | wl-copy
# wl-copy forks before the selection is served; let it land before pasting.
sleep 0.1

class=$(hyprctl activewindow -j | jq -r '.class // empty' | tr '[:upper:]' '[:lower:]')
for terminal in $TERMINAL_CLASSES; do
  if [[ $class == *"$terminal"* ]]; then
    exec wtype -M ctrl -M shift -k v -m shift -m ctrl
  fi
done
exec wtype -M ctrl -k v -m ctrl
