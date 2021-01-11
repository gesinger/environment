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

## Brightness

At least for the MacBookPro9,1, brightness did not work out of the box.
Instead, install pommed-light (pommed itself is CPU instensive):

```bash
./optional/pommed-light.sh
```

Then modify /etc/pommed.conf, and in lcd\_sysfs, set step to 1000 and on\_batt
to 4000 (or reasonable numbers for your computer's max brightness)

# Optional

## Chromium

Theme: Black Black Chrome Theme Neon Green Highlight
Extensions:
- Vimium
- Ghostery

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

# VirtualBox Specific Additions

## Guest additions and X11 fixes

Install VirtualBox guest additions and packages for X11 and display support:

```bash
$ sudo apt-get install \
    virtualbox-guest-utils \
    virtualbox-guest-x11 \
    virtualbox-guest-dkms
```

## Remapping keys permanently

Ubuntu comes with xkb (X keyBoard extension). To remap modifier keys, edit
`/usr/share/X11/xkb/symbols/pc`. To change left win to left alt, change:

```
key <LWIN>  {[Super_L]};
```
to
```
key <LWIN> {[Alt_L]};
```

and clear xkb's cache:

```bash
rm -rf /var/lib/xkb/*
```

then restart your X session.

# TODO

- Separate out laptop/mac/desktop configurations (e.g., touchpad taps)
- Check into infinitality alternative:
freetype2-ubuntu
fontconfig-ubuntu
cairo-ubuntu
- Look into suckless st
- Add neovim

---

Add alias for tree and add tree to environment:
tree => tree -I node_modules

---

Install oh-my-zsh
git config --global diff.tool vimdiff

# Useful extra tools

## Streaming Tools

* https://github.com/soldiermoth/hlsq
