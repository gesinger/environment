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

# TODO

- Separate out laptop/mac/desktop configurations (e.g., touchpad taps)
- Check into infinitality alternative:
freetype2-ubuntu
fontconfig-ubuntu
cairo-ubuntu
- Look into suckless st
