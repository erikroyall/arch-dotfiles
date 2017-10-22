source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme afowler

antigen apply

# PATH modifications
export PATH=~/.npm-global/bin:$PATH
export PATH=~/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias e="emacs -nw"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export TERM="xterm-256color"
export EDITOR='vim'

#(wal -r -t &)

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go"
export PATH="$HOME/go/bin:$PATH"

function fortran {
  gcc $1.f95 -o $1 -lgfortran && ./$1
}

function c {
  gcc $1.c -o $1 && ./$1
}

function c++ {
  g++ $1.cpp -o $1 && ./$1
}


