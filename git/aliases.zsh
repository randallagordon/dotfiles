# Use `hub` as our git wrapper:
eval "$(hub alias -s)"

# hub aliases
alias gpr='git pull-request'
alias gf='git fork'

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdsf='git dsf' # https://github.com/so-fancy/diff-so-fancy
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcom='git checkout $(git rev-parse master)'
alias gb='git branch'
alias gbv='git branch -va'
alias gun='git branch -v --no-merge'
alias gbd='git branch -d'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias ga='git add'
alias gh='git hist'
alias gr='git rebase'
alias gwt='git worktree'
alias grp='git rev-parse'
alias gru='git remote update'
alias grbm='git remote update && git checkout $(git rev-parse origin/master)' # 'git reset branch [to] master'
alias gcon='git diff --name-only --diff-filter=U' # 'git conflicts'

alias prme='cat ~/pr-template.md | pbcopy'

# Because I'm *really* lazy, this allows `g` act as
# - an alias to `git` when provided arguments
# - an alias to `gs` (`git status -sb` above) when not provided arguments
g() {
  [ $# -gt 0 ] && git $@ || gs
}
