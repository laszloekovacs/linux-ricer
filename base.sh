#!/bin/bash
#create a var that stores the repo url shortened
BASEURL="https://tinyurl.com/227z9te5"


echo "this install script is meant to run only on ubuntu server, brace yourself if it fails"

# run update and upgrade
sudo apt update && sudo apt upgrade -y

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
wget $BASEURL/rice.sh 
chmod +x $HOME/rice.sh

# download config files to sudo users home
USER_HOME=$(eval echo ~$SUDO_USER)

wget $BASEURL/conf/.xinitrc -P $USER_HOME
wget $BASEURL/conf/.bash_aliases -P $USER_HOME
#wget $BASEURL/conf/.Xresources -O $HOME/.Xresources
