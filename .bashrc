stty -ixoff
stty stop undef
stty start undef

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

export EDITOR="vim"
export LC_CTYPE=en_US.UTF-8
export HISTSIZE=500
export HISTFILESIZE=1500
export CLICOLOR=1

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d'
}

export PS1="\w\$(parse_git_branch)\[$NO_COLOR\]\[$MAGENTA\] \[$NO_COLOR\]\$ "

# Colors from http://wiki.archlinux.org/index.php/Color_Bash_Prompt
# Misc
NO_COLOR='\e[0m' #disable any colors
# Regular colors
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'
# Emphasized (bolded) colors
EBLACK='\e[1;30m'
ERED='\e[1;31m'
EGREEN='\e[1;32m'
EYELLOW='\e[1;33m'
EBLUE='\e[1;34m'
EMAGENTA='\e[1;35m'
ECYAN='\e[1;36m'
EWHITE='\e[1;37m'
# Underlined colors
UBLACK='\e[4;30m'
URED='\e[4;31m'
UGREEN='\e[4;32m'
UYELLOW='\e[4;33m'
UBLUE='\e[4;34m'
UMAGENTA='\e[4;35m'
UCYAN='\e[4;36m'
UWHITE='\e[4;37m'
# Background colors
BBLACK='\e[40m'
BRED='\e[41m'
BGREEN='\e[42m'
BYELLOW='\e[43m'
BBLUE='\e[44m'
BMAGENTA='\e[45m'
BCYAN='\e[46m'
BWHITE='\e[47m'

PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
