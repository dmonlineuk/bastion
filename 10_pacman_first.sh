#!/bin/bash

# basic deps

sudo pacman -Syu;

sudo pacman -S --noconfirm \
	pass \
	firefox \
	pacutils \
	perl-json-xs \
	vifm \
	vim \
	curl \
	gnupg \
	xorg \
	xfce4 \
	xfce4-goodies \
	ufw \
	ghostty \
;
