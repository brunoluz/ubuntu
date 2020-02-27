# files app - textarea on location instead of breadcrumbs
gsettings set org.gnome.nautilus.preferences always-use-location-entry true

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