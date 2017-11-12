# i3 config

i3-config-wizard

echo 'exec albert' >> ~/.config/i3/config

echo 'exec mate-volume-control-applet' >> ~/.config/i3/config

echo 'exec redshift-gtk' >> ~/.config/i3/config

echo 'exec start-pulseaudio-x11' >> ~/.config/i3/config

echo 'exec system-config-printer-applet' >> ~/.config/i3/config

echo 'exec mate-power-manager' >> ~/.config/i3/config

echo 'exec variety' >> ~/.config/i3/config

echo 'exec /usr/bin/mate-settings-daemon' >> ~/.config/i3/config

echo 'exec imsettings-switch -n -q -x' >> ~/.config/i3/config

echo 'exec blueman-applet' >> ~/.config/i3/config

echo 'exec dropbox start' >> ~/.config/i3/config

echo 'exec /usr/lib/x86_64-linux-gnu/polkit-mate/polkit-mate-authentication-agent-1' >> ~/.config/i3/config

cat ~/.config/i3/config | sed 's/i3-sensible-/mate-/g' > ~/.config/i3/config.1

rm ~/.config/i3/config && mv ~/.config/i3/config.1 ~/.config/i3/config
