source $HOME/antigen.zsh
source $HOME/.config/zsh/tmuxinator.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found

antigen theme robbyrussell

antigen apply

# PATH modifications
export PATH=~/.npm-global/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export EDITOR='vim'
