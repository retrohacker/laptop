# Setting up my laptop

Putting together a reference for how I installed/configured my laptop (Libreboot x200t) for when I have to do this again in the future.

# Installing the OS

https://libreboot.org/docs/gnulinux/encrypted_debian.html

hostname: jigglypuff

Add `iomem=relaxed` to the `linux /vmlinuz ...` grub command when booting for the first time to enable reflashing libreboot.

# Configuring debian

Login as root to do configuration (we don't have `sudo` installed yet)

## Setting up wifi

### Setup wired connection

https://askubuntu.com/questions/13993/how-to-connect-to-wired-internet-connection-through-terminal#181131

instead of `auto` use `allow-hotplug`

### Install wicd-curses

`apt install wicd-curses`

Now use `wicd-curses` to configure and connect to wifi


## Install sudo

`apt install sudo`

`usermod -aG sudo retrohacker && groups retrohacker`

## Desktop

### Xorg

`apt-install xorg`

### Login screen

https://wiki.debian.org/LightDM

Custom stuff:

```
apt install --no-install-recommends lightdm
```

### Window Manager

https://wiki.debian.org/Awesome

### Enable lightdm

```
systemctl enable lightdm
```

---

You should now see the display-manager

restart the system and login as retrohacker

---

## Web Browser

### w3m

To install other browsers

`apt install w3m`

(`a` inside w3m will download a link and save it to disk)

### All sites requiring login

install: https://www.mozilla.org/en-US/firefox/new/
configure: https://wiki.debian.org/Firefox

Custom:

* Create a `~/Software` directory to unpack `firefox` into.
* Create a `~/bin` directory and symlink `~/Software/firefox/firefox` into it

For now we will run `~/bin/firefox` directly but this will be a lookup PATH later

### Everything else

install: https://www.torproject.org/download/download-easy.html.en
configure: https://wiki.debian.org/TorBrowser#AppArmor_confinement_and_Xserver_isolation

## Terminal

### xterm

`apt install xterm fonts-powerline`

Place the [./xterm/.Xresources](./xterm/.Xresources) file at `~/.Xresources`

### zsh

`apt install zsh git`

Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Place the [./zsh/.zshrc](./zsh/.zshrc) file at `~/.zshrc`

### vim

`apt install vim`

## Misc packages

* build-essential
* gimp
* gimp-plugin-registry
* gnupg
* htop
* inkscape
* ksnapshot
* tree
* vlc
* xterm
