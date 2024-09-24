# personal linux ricer for ubuntu server

Automated istallation of linux tools and settings for my taste

I created a tinyurl shortened url ending in main/
```
https://raw.githubusercontent.com/laszloekovacs/linux-ricer/refs/heads/main/
becomes:
https://tinyurl.com/2a6lrdw7
```
## how to install

wget is installed by default. To get the install script, make it executable
```
wget https://tinyurl.com/2a6lrdw7/rice.sh
chmod +x rice.sh
```
### xorg and related
- curl
- xorg
- xinit - for startx
- x-server-utils - for setting background
- xterm
- rxvt-unicode
- xsel - clipboard for rxvt apparently
- i3-wm - executable is i3



### programming related libraries
install compiler and cmake, opengl / mesa, opencl, openal
the xorg related dev libraries

```
gcc
cmake

libx11-dev
xserver-xorg-dev
xorg-dev

mesa-common-dev
libglu1-mesa-dev

ocl-icd-dev
opencl-headers
libopenal-dev
```

### docker install notes

from the documentation, to install docker, run this

```
curl -fsSL https://get.docker.com -o install-docker.sh
chmod 700 install-docker.sh
sh install-docker.sh
```


### additional notes

- rofi - launcher
- polybar - status bar
- lemonbar
- flameshot - screenshot
- docker
- vscode -snap ? --classic
- firefox -snap

https://www.golinuxcloud.com/install-visual-studio-code-ubuntu-22/
https://addy-dclxvi.github.io/post/configuring-urxvt/

/ create a sensible .xinitrc
-custom Xresources (needs to be loaded in xinitrc, dont use &
