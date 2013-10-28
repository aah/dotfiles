fpath=(/usr/local/share/zsh-completions $HOME/.zsh/functions $fpath)
typeset -U fpath

export PATH="/usr/local/bin:$PATH"

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi
