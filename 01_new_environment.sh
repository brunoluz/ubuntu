# files app - textarea on location instead of breadcrumbs
gsettings set org.gnome.nautilus.preferences always-use-location-entry true

# files app - add "New Document" or right click
touch ~/Templates/Empty\ Document

# disable UTC and use local time (like windows)
timedatectl set-local-rtc 1 --adjust-system-clock