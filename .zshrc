# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PS1="%{%F{216}%}%n%{%F{220}%}@%{%F{222}%}%m %{%F{229}%}%1~ %{%f%}$ "

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

source <(fzf --zsh)
# Home and End Key Bindings
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey  "^[[3~"  delete-char

export EDITOR="nvim"
export VISUAL="nvim"

eval $(keychain  --eval ~/.ssh/git_signing )

export PATH="$HOME/.local/bin:$PATH"
