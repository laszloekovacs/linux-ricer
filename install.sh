#!/bin/bash
echo "this install script is meant to run only on ubuntu server, brace yourself if it fails"

#array of packages that I want installed
packages=("xorg", "xterm")

#loop through the packages and install them
for package in "${packages[@]}"; do
  if ! dpkg -s "$package"; then
    sudo apt install "$package" -y
  fi
done
