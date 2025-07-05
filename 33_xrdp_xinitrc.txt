#!/bin/bash

# ~/.xinitrc
echo "#!/bin/bash" >> ~/.xinitrc
echo "setxkbmap gb" >> ~/.xinitrc
echo "exec startxfce4" >> ~/.xinitrc
chmod +x ~/.xinitrc
