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

# These files maybe missing, and needs populating:
# /etc/X11/Xwrapper.config
echo allowed_users=anybody | sudo tee -a /etc/X11/Xwrapper.config
echo needs_root_rights=yes | sudo tee -a /etc/X11/Xwrapper.config 
# ~/.xinitrc
echo "#!/bin/bash" >> ~/.xinitrc
echo "setxkbmap gb" >> ~/.xinitrc
echo "exec startxfce4" >> ~/.xinitrc
chmod +x ~/.xinitrc

sudo systemctl enable --now xrdp xrdp-sesman
