#!/bin/bash

# Setting up ufw. Only port should be 3389 (rdp)
sudo ufw allow 3389
sudo ufw enable
