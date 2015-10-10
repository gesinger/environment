# environment

My development environment

# Usage

## Vagrant

To replicate my environment, clone this repo into the directory where you keep
your repos (as it will sync the parent directory to /repos on the VM) and bring
up the Vagrant box.

```bash
$ cd /your/repo/dir
$ git clone https://github.com/gesinger/environment.git
$ cd environment
$ vagrant up
```

## Physical

To replicate my environment on a physical machine, clone this repo into the
directory where you keep your repos, cd into it, and run the physical bootrap.

```bash
$ cd /your/repo/dir
$ git clone https://github.com/gesinger/environment.git
$ cd environment
$ sh bootstrap_physical.sh
```

# Fixes

## Screen Resolution

In /etc/default/grub, add:

```
GRUB_GFXPAYLOAD_LINUX=1280x800
```

Then run:

```bash
$ sudo update-grub
```

## Better Fonts

Infinality was installed as part of bootstrap_physical.sh, however, configure
it by running:

```bash
$ sudo bash /etc/fonts/infinality/infctl.sh setstyle
```

## Color Profile

Grab an icc/icm file calibrated in another os. For instance, on Mac it can be
found at:

/Library/ColorSync/Profiles

And move it to:

/usr/share/color/icc

Then run:

```bash
dispwin -I /usr/share/color/icc/<filename>.[icc|icm]
```

# Optional

## Chromium Browser Theme

Black Black Chrome Theme Neon Green Highlight

## Firefox Browser Theme

Simple White Firefox Theme

# Mac Specific Additions

Check the Ubuntu website for up-to-date instructions on particular macs, e.g.:
https://help.ubuntu.com/community/MacbookPro*-*/*

## Set command key as option key

https://help.ubuntu.com/community/AppleKeyboard#Ubuntu_11.10_up_to_recent

## Set up eth0

```bash
$ sudo vim /etc/network/interfaces
```

Add:

auto eth0
iface eth0 inet dhcp

## Set up B43 WIFI drivers

https://help.ubuntu.com/community/WifiDocs/Driver/bcm43xx#b43_-_Internet_access

## Sound

```bash
$ sudo apt-get install libasound2 libasound2-plugins alsa-utils alsa-oss
$ sudo usermod -aG audio <username>
$ sudo alsa force-reload
```

Test sound with:

```bash
$ aplay /usr/share/sounds/alsa/Front_Center.wav
```

# TODO

- Separate out laptop/mac/desktop configurations (e.g., touchpad taps)
- Check into infinitality alternative:
freetype2-ubuntu
fontconfig-ubuntu
cairo-ubuntu
- Look into suckless st
