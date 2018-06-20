# Setting up my laptop

Putting together a reference for how I installed/configured my laptop (Libreboot x200t) for when I have to do this again in the future.

# Installing the OS

https://libreboot.org/docs/gnulinux/encrypted_debian.html

hostname: jigglypuff

# Configuring debian

## Login screen

https://wiki.debian.org/LightDM

## Window Manager

https://wiki.debian.org/Awesome

## Web Browser

### All sites requiring login

install: https://www.mozilla.org/en-US/firefox/new/
configure: https://wiki.debian.org/Firefox

### Everything else

install: https://www.torproject.org/download/download-easy.html.en
configure: https://wiki.debian.org/TorBrowser#AppArmor_confinement_and_Xserver_isolation

## Terminal

### xterm

`apt install xterm fonts-powerline`

Place the [./xterm/.Xresources](./xterm/.Xresources) file at `~/.Xresources`

### zsh

`apt install zsh git curl`

Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Place the [./zsh/.zshrc](./zsh/.zshrc) file at `~/.zshrc`

## vim

`apt install vim`

## Misc packages

* build-essential
* git
* gimp
* gimp-plugin-registry
* gnupg
* htop
* inkscape
* ksnapshot
* tree
* vlc
* xterm
* zsh
