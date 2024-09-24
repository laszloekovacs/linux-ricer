#!/bin/bash

# download
wget https://github.com/IBM/plex/releases/download/v6.0.0/TrueType.zip

# unzip
unzip TrueType.zip -d ibm-plex-fonts

# move to system folders
sudo mkdir -p /usr/share/fonts/truetype/ibm-plex
sudo mv ibm-plex-fonts/TrueType/IBM-Plex-Mono /usr/share/fonts/truetype/ibm-plex/

# update font cache
sudo fc-cache -fv

# convert to ttf
sudo apt install fontforge -y

fontforge -script - <<EOF
Open("/usr/share/fonts/truetype/ibm-plex/IBM-Plex-Mono/IBMPlexMono-Regular.ttf")
Generate("/usr/share/fonts/X11/misc/IBMPlexMono-Regular.pcf.gz")
EOF

sudo mkfontscale /usr/share/fonts/X11/misc/
sudo mkfontdir /usr/share/fonts/X11/misc/
xset +fp /usr/share/fonts/X11/misc/
xset fp rehash

# add to .Xresources
echo "xterm*faceName: IBM Plex Mono" >> ~/.Xresources
echo "xterm*faceSize: 12" >> ~/.Xresources  # Adjust the size if needed

# apply changes
xrdb -merge ~/.Xresources
