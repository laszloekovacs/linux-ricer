#!/bin/bash
#create a var that stores the repo url shortened
BASEURL="https://tinyurl.com/227z9te5"

# --- dev packages ---
devpacks=("build-essential" "cmake" "libx11-dev" "xserver-xorg-dev" "xorg-dev" "mesa-common-dev" "libglu1-mesa-dev" "ocl-icd-dev" "opencl-headers" "libopenal-dev")

for devpack in "${devpacks[@]}"; do
  if ! dpkg -s "$devpack" > /dev/null 2>&1; then
    echo -e "\033[0;33mInstalling $devpack\033[0m"
    sudo apt install "$devpack" -y > /dev/null 2>&1
    echo -e "\033[0;33mInstalled $devpack\033[0m"
  else 
    echo -e "\033[0;32m$devpack is already installed\033[0m"
  fi
done

# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm install node
node -v
npm -v


# -- docker --
# check if docker is already installed
if dpkg -s "docker" > /dev/null 2>&1; then
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
else
  echo -e "\033[0;32mDocker is already installed\033[0m"
fi
done

# install vscode
snap install --classic code

#install edge browser and dependencies
apt install software-properties-common apt-transport-https curl ca-certificates -y
#get the key
curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /usr/share/keyrings/microsoft.gpg > /dev/null
#integrate key into system
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main' | tee /etc/apt/sources.list.d/microsoft-edge.list
apt update
apt install microsoft-edge-stable -y

# end of script
echo -e "\033[0;33mDone!\033[0m"
