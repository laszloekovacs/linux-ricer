# personal linux ricer for ubuntu server
Automated istallation of linux tools and settings for my taste.
I created a tinyurl shortened url ending in main/
```
https://raw.githubusercontent.com/laszloekovacs/linux-ricer/refs/heads/main/

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
- x-server-utils - for setting background
- xterm
- rxvt-unicode
- xsel - clipboard for rxvt apparently
- i3 - window manager, executable is i3

### programming related libraries
install compiler and cmake, opengl / mesa, opencl, openal
the xorg related dev libraries

```
build-essential
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

### snap packages, firefox, edge, vscode
vscode needs parameter --classic to install and be able to use the fs
```

```

### additional notes

- rofi - launcher
- polybar - status bar
- lemonbar
- flameshot - screenshot
- vscode -snap ? --classic
- firefox -snap

https://www.golinuxcloud.com/install-visual-studio-code-ubuntu-22/
https://addy-dclxvi.github.io/post/configuring-urxvt/


-custom Xresources (needs to be loaded in xinitrc, dont use &)
