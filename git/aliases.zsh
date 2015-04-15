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
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gbv='git branch -va'
alias gun='git branch -v --no-merge'
alias gbd='git branch -d'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias g='gs' # Because I'm *really* lazy
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias ga='git add'
alias gh='git hist'
alias gcon='git diff --name-only --diff-filter=U'

# QuickLeft goodies
alias prme='cat ~/pr-template.md | pbcopy'
