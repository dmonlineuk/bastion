#!/bin/bash

# /etc/X11/Xwrapper.config
echo allowed_users=anybody | sudo tee -a /etc/X11/Xwrapper.config
echo needs_root_rights=yes | sudo tee -a /etc/X11/Xwrapper.config 
