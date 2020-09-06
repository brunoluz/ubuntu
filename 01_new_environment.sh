# files app - textarea on location instead of breadcrumbs
# gsettings set org.gnome.nautilus.preferences always-use-location-entry true

# files app - add "New Document" or right click
touch ~/Templates/Empty\ Document

# disable UTC and use local time (like windows)
timedatectl set-local-rtc 1 --adjust-system-clock

# install ubuntu-restricted-extras, which makes ubuntu able to
# - Support for MP3 and unencrypted DVD playback
# - Microsoft TrueType core fonts
# - Flash plugin
#  - codecs for common audio and video files
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get remove ubuntu-restricted-extras -y
sudo apt-get install chrome-gnome-shell -y
sudo apt-get install synaptic -y
sudo apt install gnome-tweaks -y

# add open in terminal
cp open-in-terminal.sh /home/bruno/.local/share/nautilus/scripts

# click to minimize on dock launcher
gsettings set org.gnome.shell.extensions.dash-to-dock click-action minimize
