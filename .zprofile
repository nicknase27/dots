if uwsm check may-start; then
    exec uwsm start hyprland-uwsm.desktop
fi

# Set default applications
xdg-settings set default-web-browser brave.desktop
xdg-settings set default-file-manager pcmanfm.desktop
xdg-settings set default-text-editor code.desktop
xdg-settings set default-terminal kitty.desktop
xdg-settings set default-music-player mpv.desktop
xdg-settings set default-image-viewer feh.desktop
