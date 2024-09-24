# personal linux ricer for ubuntu server

Automated istallation of linux tools and settings for my taste

I created a tinyurl shortened url ending in main/
```
https://raw.githubusercontent.com/laszloekovacs/linux-ricer/refs/heads/main/install.sh
https://tinyurl.com/2a6lrdw7
```

wget is installed by default. To get the install script, make it executable
```
wget https://tinyurl.com/2a6lrdw7/install.sh
chmod +x install.sh
```


todo: make sure this is correct:
```bash
   -o rice.sh && ./rice.sh
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
- mesa utils
```
sudo apt-get install libx11-dev xserver-xorg-dev xorg-dev
```

khronos libs
```
sudo apt update
sudo apt install mesa-common-dev libglu1-mesa-dev
sudo apt install ocl-icd-dev opencl-headers
sudo apt install libopenal-dev

```

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
