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

Now move the files from [./awesome](./awesome) to `~/.config/awesome`

I.E.

```
find awesome -type d -exec mkdir -p ~/.config/{} \;
find awesome -type f -exec ln {} ~/.config/{} \;
```

(Bias towards linking files to avoid your config drifting out of state with the
dotfile repo)

### Setup path for ~/.bin scripts

I like putting utility scripts and custom installed software in .bin under the
user directory, this path needs to be set _before_ awesomewm spawns. Debian
will run .xsessionrc prior to loading an xsession.

Move the file `./xsessionrc` to `~/.xsessionrc`.

```
ln ./xsessionrc ~/.xsessionrc
```

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

### Firefox

install: https://www.mozilla.org/en-US/firefox/new/
configure: https://wiki.debian.org/Firefox

Custom:

* Create a `~/Software` directory to unpack `firefox` into.
* Create a `~/bin` directory and symlink `~/Software/firefox/firefox` into it

For now we will run `~/bin/firefox` directly but this will be a lookup PATH later

**addons**

* LastPass
* HTTPS Everywhere
* Impulse Blocker (twitter!)
* Privacy Badger
* uBlock Origin
* Vim Vixen

**search engines**

* duckduckgo (default)
* wikipedia

## Terminal

### ssh

`ssh-keygen -t ed25519 && cat ~/.ssh/id_ed25519.pub | xclip`

Now add ~/.ssh/id_ed25519.pub to github and gitlab

### git

Setup the global ignore file:

```
git config --global core.excludesfile '~/Development/laptop/.gitignore'
```

### xterm

`apt install xterm`

`cd ~/Development && git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh`

Place the [./xterm/.Xresources](./xterm/.Xresources) file at `~/.Xresources`

### zsh

`apt install zsh git`

Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`


Next install [pure](https://github.com/sindresorhus/pure): `mkdir -p "$HOME/.zsh" && git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"`

Place the [./zsh/.zshrc](./zsh/.zshrc) file at `~/.zshrc`

### fzf

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### vim

`apt install vim build-essential cmake python-dev python3-dev`

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

From inside vim: `:VundleInstall`

**install node**

curl -L https://git.io/n-install | bash

npm install -g typescript

**YouCompleteMe**

```
cd ~/.vim/bundle/YouCompleteMe/
./install.py --js-completer --clang-completer
```

## Misc packages

* build-essential 
* gimp
* gimp-plugin-registry
* gnupg
* htop
* inkscape
* scrot
* tree
* vlc
* xterm
