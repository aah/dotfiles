HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=10000

setopt autocd extendedglob prompt_subst
unsetopt beep
bindkey -e

for config_file in $HOME/.zsh/**/*.zsh; do
  source $config_file
done

autoload -U promptinit g rvm_gemset_selecta dir_selecta
promptinit
prompt minimal

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

ls --color -d . &>/dev/null 2>&1 &&
  alias ls='ls --color=tty' || alias ls='ls -G'

PATH=$PATH:$HOME/bin/:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
