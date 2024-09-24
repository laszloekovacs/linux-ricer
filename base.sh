#!/bin/bash
#create a var that stores the repo url shortened
BASEURL="https://tinyurl.com/2a6lrdw7"


echo "this install script is meant to run only on ubuntu server, brace yourself if it fails"

# run update and upgrade
apt update && apt upgrade -y

# xorg and related
packages=("curl" "xorg" "x11-xserver-utils" "xterm" "rxvt-unicode" "xsel" "i3")

# loop through the packages and install them
for package in "${packages[@]}"; do
  if ! dpkg -s "$package" > /dev/null 2>&1; then
    echo -e "\033[0;33mInstalling $package\033[0m"
    sudo apt install "$package" -y
    echo -e "\033[0;33mInstalled $package\033[0m"
  else 
    echo -e "\033[0;32m$package is already installed\033[0m"
  fi
done

# download the rice script
wget $BASEURL/rice.sh -O $HOME/rice.sh
chmod +x $HOME/rice.sh

# download config files
wget $BASEURL/conf/.xinitrc -O $HOME/.xinitrc
