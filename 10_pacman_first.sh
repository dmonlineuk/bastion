#!/bin/bash

# basic deps

sudo pacman -Syu;

sudo pacman -S \
	git \
	openssh \
	pass \
	firefox \
	pacutils \
	perl-json-xs \
	vifm \
	vim \
	nano \
	curl \
	gnupg \
	xorg \
	xfce4 \
	xfce4-goodies \
	ufw \
;
