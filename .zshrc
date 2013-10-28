HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory autocd extendedglob prompt_subst
unsetopt beep
bindkey -e
zstyle :compinstall filename "$HOME/.zshrc"

autoload -U promptinit
promptinit
prompt minimal

autoload -U colors && colors
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'

for config_file in $HOME/.zsh/**/*.zsh; do
  source $config_file
done

PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
