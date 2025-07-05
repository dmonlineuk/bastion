#!/bin/bash

# Note: this is not ideal as an 'unattended' install, since it requires
# review of the downloaded source files (!)

# This may need revising if the key id changes
gpg --recv-keys 03993B4065E7193B

aur sync \
	xrdp \
	xorgxrdp \
;

sudo pacman -Syu;

sudo pacman -S \
	xrdp \
	xorgxrdp \
;

