function git_branch() {
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

PS1="\[\e[48;5;28;1;5;33m\]░\[\e[48;5;28;97m\]\A \[\e[48;5;34;38;5;232m\]\[\e[1;5;33m\]░\[\e[38;5;232m\]\u \[\e[48;5;30m\]\[\e[1;5;33m\]░ \[\e[38;5;15m\]\w \[\e[40;1;5;33m\]\[$txtcyn\]\$git_branch\[$txtrst\]\[\e[1;5;33m\] \$\[\e[m\]\[\e[49m\]"

export PATH="$PATH:$HOME/.rvm/bin"

# git alias
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

# app alias
alias chrome-dev='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security'
