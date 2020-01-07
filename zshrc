# vim: set ft=zsh:
#
#export TERM="rxvt-unicode-256color"

ZSH=$HOME/.dotfiles/zsh

# Antigen
source $ZSH/antigen/antigen.zsh
antigen bundle git
antigen bundle nojhan/liquidprompt
antigen bundle willghatch/zsh-cdr
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

antigen apply

# History
HISTSIZE=999999999
SAVEHIST=999999999
HISTFILE=~/.history
setopt histignorealldups sharehistory

# Bindings
export KEYTIMEOUT=1
bindkey -v # We use vim, always
bindkey '^P' up-history
bindkey '^N' down-history
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char # Currently bound to "go to left pane"
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# Exports
export EDITOR=vim
export VISUAL=vim
export PAGER=less

# Completion
plugins=(zsh-completions)
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
autoload -U compinit && compinit

# Prompt
autoload -Uz promptinit && promptinit

# Source *.zsh files located in $ZSH/zshrc.d
for file ($ZSH/zshrc.d/*.zsh(N)); do
  source $file
done 

# Custom environment variables
if [ -f $HOME/.env ]; then
  source $HOME/.env
fi

# Secrect environment variables
if [ -f $HOME/.env.private ]; then
  source $HOME/.env.private
fi

