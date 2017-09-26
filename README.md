# My Dotfiles

Requires GNU stow. Contains config files for i3, polybar, urxvt, vim, tmux, zsh, npm and git.

# Dependencies

- GNU stow
- i3-gaps
- polybar
- rofi
- light
- amixer
- urxvt
- compton
- nodejs
- pywal
- vim
- tmux
- nitrogen
- Font: Source Code Pro

To install dependencies on Arch Linux, run:

    yaourt -S curl stow i3-gaps rofi light nitrogen polybar zsh vim tmux rxvt-unicode compton nodejs npm adobe-source-code-pro-fonts alsa-utils python-pywal

# Installation

    git clone https://github.com/erikroyall/arch-dotfiles.git
    cd arch-dotfiles
    stow vim
    stow zsh
    stow tmux
    stow i3
    stow polybar
    stow scripts
    stow xresources
    stow git
    stow npm

# Post-Installation steps

- Install vim-plug

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

- Install antigen

    cd ~
    curl -L git.io/antigen > antigen.zsh

