# bastion

Plan here is to have xrdp up and running. openssh is optional, but isn't going to be exposed
publicly.

First steps will have to be ensuring we can use the AUR - preference is to use aurutils.

# Installing aurutils

First install requires building from source, depends on git, vifm, pacutils and perl-json-xs.

```
sudo pacman -S git, pacutils, perl-json-xs vifm

cd ~/projects
git clone https://aur.archlinux.org/aurutils.git
cd aurutils
makepkg -si
```

# Setting up aurutils

Need to enable the "custom" repo:

```
sudo nano /etc/pacman.conf
# Uncommment [custom] section and take note of path to repo
```

Create and add repo

```
sudo install -d /home/custompkgs -o $USER
repo-add /home/custompkgs/custom.db.tar
```

We can test adding a package - let's add aurutils!

```
sudo pacman -Syu
aur sync aurutils
sudo pacman -S aurutils
```

# Using aurutils to install xrdp

```
aur sync xrdp xorgxrdp
sudo pacman _s xrdp xorgxrdp

sudo systemctl enable --now xrdp xrdp-sesman
```
