# personal linux ricer for ubuntu server

Automated istallation of linux tools and settings for my taste

## prerequisites
- curl needs to be installed, if not you can install it with `sudo apt install curl`

if that's done use curl to download the script and run it as sudo

tinyurl shortened url ending in main/
```
https://tinyurl.com/2a6lrdw7
```

todo: make sure this is correct:
```bash
  curl -SL https://raw.githubusercontent.com/laszloekovacs/linux-ricer/refs/heads/main/install.sh -o rice.sh && ./rice.sh
```

### stuff i want to include
- x-server-utils = setting the background
- bspwm - window manager
- sxhkd - key bindings
- rofi - launcher
- polybar - status bar
- lemonbar
- xorg - x server
- xinit - for startx
- i3-wm - executable is i3
- flameshot - screenshot
- docker
- coolify
- vscode -snap ? --classic
- xterm
- firefox -snap
- rxvt-unicode
- sudo apt-get install rxvt-unicode xsel // xsel is a clipboard em

/ create a sensible .xinitrc

- gcc and cmake
- x dev libraries like opengl opencl



- apt update
- apt upgrade
-custom Xresources (needs to be loaded in xinitrc, dont use &

https://www.golinuxcloud.com/install-visual-studio-code-ubuntu-22/

https://addy-dclxvi.github.io/post/configuring-urxvt/

docker install with script
```
curl -fsSL https://get.docker.com -o install-docker.sh
chmod 700 install-docker.sh
```
