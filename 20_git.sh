#!/bin/bash

# gcm and other git-specific settings
curl -L https://aka.ms/gcm/linux-install-source.sh | sh
git-credential-manager configure
git config --global user.email "dan@dmonline.uk"
git config --global user.name dan
git config --global credential.credentialStore gpg
gpg --quick-generate-key "Daniel Morris (Happy to be here) <dan@dmonline.uk>"
pass init "Daniel Morris (Happy to be here) <dan@dmonline.uk>"