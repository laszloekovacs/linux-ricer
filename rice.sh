#!/bin/bash
#create a var that stores the repo url shortened
BASEURL="https://tinyurl.com/2a6lrdw7"


echo "this install script is meant to run only on ubuntu server, brace yourself if it fails"

if [[ "$(lsb_release -i -s)" == "Ubuntu" ]] 
then
  echo "this script is running on ubuntu server"
else 
  echo "this script is not running on ubuntu server"
fi

# run update and upgrade
apt update && apt upgrade -y

# array of desired packages
packages=("curl" "xorg" "x-server-utils" "xterm" "rxvt-unicode" "xsel" "i3")

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

# -- Istall docker --
echo -e "\033[0;33mInstalling Docker\033[0m"
curl -fsSL https://get.docker.com -o get-docker.sh
# check if it downloaded
if [ -f get-docker.sh ]; then
  # make it executable
  chmod +x get-docker.sh
  # run the script
  sh get-docker.sh
  # remove the script
  rm get-docker.sh
  echo -e "\033[0;33mInstalled Docker\033[0m"
else
  echo -e "\033[0;32mFailed to install Docker\033[0m"
fi


#download config files
wget $BASEURL/.xinitrc


