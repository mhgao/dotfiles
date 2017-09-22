# sources to allow use of __git_ps1
source ~/.git-prompt.sh

# sources to allow use of fzf in command line
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# formats command prompt
export PS1="martin$(__git_ps1 "(%s)")$ "

alias tmux="TERM=screen-256color-bce tmux"
alias vim="nvim"
alias halligan="ssh mgao01@homework.cs.tufts.edu"
alias ..="cd .."
alias ...="cd ../.."
