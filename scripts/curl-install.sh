#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in ArchTitus Folder."
    echo "Please use ./archtitus.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the Goofy_os Project"
git clone https://github.com/ChipVR11/goof_os/edit/main/scripts/curl-install.sh#L15C18-L15C27
echo "Executing goofy_os Script"

cd $HOME/goofy_os

exec ./archtitus.sh
