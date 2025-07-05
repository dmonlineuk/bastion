#!/bin/bash

# aurutils - this is a build from AUR
# We'll test the success of the setup by
# adding aurutils using aurutils - so we
# will skip copying the package to repo

mkdir -p ~/projects/
cd ~/projects/
git clone https://aur.archlinux.org/aurutils.git#
cd ~/projects/aurutils/
makepkg -si

# This appends lines to the pacman.conf, but note
# the lines may already exist as commented out <shrug>
echo [custom] | sudo tee -a /etc/pacman.conf
echo "SigLevel = Optional TrustAll" | sudo tee -a /etc/pacman.conf
echo "file:///home/custompkgs" | sudo tee -a /etc/pacman.conf

# Create and add the repo
sudo install -d /home/custompkgs -o $USER
repo-add /home/custompkgs/custom.db.tar
sudo pacman -Syu

# Test by adding aurutils
aur sync aurutils
sudo pacman -S aurutils

# Can now drop aurutils project
rm -rf ~/projects/aurutils/
