#!/bin/bash
echo "this install script is meant to run only on ubuntu server, brace yourself if it fails"

if [[ "$(lsb_release -i)" == "Ubuntu" ]] 
then
  echo "this script is running on ubuntu server"
else 
  echo "this script is not running on ubuntu server"
fi

#array of packages that I want installed
packages=("xorg" "xterm")

#loop through the packages and install them
for package in "${packages[@]}" do
  if ! dpkg -s "$package" then
    echo -e "\033[0;33mInstalling $package\033[0m"
    sudo apt install "$package" -y
    echo -e "\033[0;33mInstalled $package\033[0m"
  else 
    echo -e "\033[0;32m$package is already installed\032[0m"
  fi
done
