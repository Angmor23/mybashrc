# .bashrc
function git_branch()
{
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi
    git_branch=" ($branch)"
  else
    git_branch=""
  fi
}

PROMPT_COMMAND="git_branch; $PROMPT_COMMAND"

PS1="\[\e[0;31m\]☰\[\e[0;33m\]  \t \[\e[0;31m\]❱\[\e[m\] \u@\h \[\e[0;31m\]❱\[\e[0;33m\] \w \[\e[m\]\[\e[0;31m\]❱\[\e[40;32m\]\[$txtcyn\]\$git_branch\[\e[1;5;33m\] \$\[\e[m\]\[\e[49m\]"

alias csl='clear'
alias gch='git checkout'
alias gpl='git pull'
alias gps='git push'
alias gcm='git commit -m'
alias gcm-nv='git commit --no-verify'
alias gmr='git merge --no-ff'
alias ggr='git grep --name-only'
alias gst='git status'
alias gba='git branch -a'
alias glg='git log'
alias gfc='git fetch'
