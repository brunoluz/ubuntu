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

# files app - add "New Document" or right click
touch ~/Templates/Empty\ Document

# disable UTC and use local time (like windows)
timedatectl set-local-rtc 1 --adjust-system-clock

# add open in terminal
cp open-in-terminal.sh /home/bruno/.local/share/nautilus/scripts

# click to minimize on dock launcher
gsettings set org.gnome.shell.extensions.dash-to-dock click-action minimize

# install chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt install ./google-chrome-stable_current_amd64.deb -y && rm -f google-chrome-stable_current_amd64.deb*

# instal vscode
sudo snap install --classic code

# set desktop as solid color
gsettings set org.gnome.desktop.background picture-uri ''
gsettings set org.gnome.desktop.background primary-color 'rgb(66, 81, 100)'

# custom path
mkdir ~/.custom_path
echo "PATH DEFAULT=\${PATH}:$( getent passwd "$USER" | cut -d: -f6 )/.custom_path" >> ~/.pam_environment
ln -s "$(which google-chrome)" ~/.custom_path/chrome
ln -s "$(which gnome-session-quit)" ~/.custom_path/logout

