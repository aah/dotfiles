HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory autocd extendedglob prompt_subst
unsetopt beep
bindkey -e

for config_file in $HOME/.zsh/**/*.zsh; do
  source $config_file
done

autoload -U g promptinit
promptinit
prompt minimal

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
ls --color -d . &>/dev/null 2>&1 &&
  alias ls='ls --color=tty' || alias ls='ls -G'

PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
