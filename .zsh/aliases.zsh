alias -- -="cd - 1>/dev/null"
alias ...="cd ../.."
alias l="ls -1A"
alias v.="vim ."
alias vi="vim"

# selecta (github: garybernhardt/selecta)
alias code="dir_selecta ~/code"
alias gbs="git branch | cut -c 3- | selecta | xargs git checkout"
alias jj="dir_selecta ~/{code,work}"
alias rgu="rvm_gemset_selecta"
alias work="dir_selecta ~/work"

# ruby
alias b="bundle"
alias mm="middleman"
alias mmb="middleman build"
alias mms="middleman server --host localhost"
alias rcs="rails console --sandbox"
alias rgc="rvm gemset create"
alias rsbl="rails server --bind localhost"

# git
alias gaa="git add --all"
alias gap="git add --patch"
alias gb="git branch"
alias gca="git commit --amend"
alias gcaa="git commit --amend -CHEAD"
alias gcam="git commit --amend --message"
alias gcl="git clone"
alias gcm="git commit --message"
alias gco="git checkout"
alias gcom="git checkout master"
alias gf="git fetch"
alias gfr="git pull --rebase"
alias gg="git checkout -"
alias gl="git lola"
alias gp="git push"
alias gpf="git push --force"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias gri="git rebase --interactive"
alias gs="git stash"
alias gsa="git stash apply"

alias zsrc="exec zsh -l"
