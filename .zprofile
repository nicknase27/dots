if uwsm check may-start; then
    exec uwsm start hyprland-uwsm.desktop
fi

# Set default applications
xdg-settings set default-web-browser qutebrowser.desktop
xdg-settings set default-file-manager dolphin.desktop
xdg-settings set default-text-editor codium.desktop
xdg-settings set default-terminal kitty.desktop
xdg-settings set default-music-player mpv.desktop
xdg-settings set default-image-viewer feh.desktop
