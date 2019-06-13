# Use `hub` as our git wrapper:
eval "$(hub alias -s)"

# hub aliases
alias gpr='git pull-request'
alias gf='git fork'

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev=7 --date=relative"
alias gp='git push'
alias gpo='git push -u origin'
alias gpuo='git push -u origin'
alias gpb='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gpbb='git push -u origin $(git rev-parse --abbrev-ref HEAD) && git browse'
alias gbro='git browse'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdsf='git dsf' # https://github.com/so-fancy/diff-so-fancy
alias gc='git commit'
alias gcup='git commit --amend --no-edit --no-verify'
alias gco='git checkout'
alias gcm='git checkout $(git rev-parse upstream/master)'
alias gcom='git checkout $(git rev-parse origin/master)'
alias gb='git branch'
alias gbv='git branch -va'
alias gun='git branch -v --no-merge'
alias gbd='git branch -d'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias ga='git add'
alias gh='git hist'
alias gwt='git worktree'
alias grp='git rev-parse'
alias gbr='git rev-parse --abbrev-ref HEAD' # Get current branch name
alias gru='git remote update'
alias gr='git rebase'
alias grom='git rebase origin/master'
alias grum='git rebase upstream/master'
alias grbm='git remote update && git checkout $(git rev-parse origin/master)' # 'git reset branch [to] master'
alias gcon='git diff --name-only --diff-filter=U' # 'git conflicts'
alias grmdeleted="git status | grep deleted | awk '{print \$3}' | xargs git rm"

# Create `g1` through `g10` for quick `git log -#`ing
for i in {1..10}; do alias g$i="glog -$i"; done

alias prme='cat ~/pr-template.md | pbcopy'

# Because I'm *really* lazy, this allows `g` act as
# - an alias to `git` when provided arguments
# - an alias to `gs` (`git status -sb` above) when not provided arguments
g() {
  [ $# -gt 0 ] && git $@ || gs
}
