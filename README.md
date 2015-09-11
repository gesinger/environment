# environment

My development environment, set up using Vagrant

# Requirements

- Vagrant

# Usage

To replicate my environment, clone this repo into the directory where you keep
your repos (as it will sync the parent directory to /repos on the VM) and bring
up the Vagrant box.

```bash
$ cd /your/repo/dir
$ git clone https://github.com/gesinger/environment.git
$ cd environment
$ vagrant up
```

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
