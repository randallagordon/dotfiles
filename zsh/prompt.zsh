autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$($git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ "$st" =~ ^nothing ]]
    then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

rb_prompt(){
  if (( $+commands[rbenv] ))
  then
	  echo "%{$fg_bold[yellow]%}$(rbenv version | awk '{print $1}')%{$reset_color%}"
	else
	  echo ""
  fi
}

# This keeps the number of todos always available the right hand side of my
# command line. I filter it to only count those tagged as "+next", so it's more
# of a motivation to clear out the list.
todo(){
  if (( $+commands[todo.sh] ))
  then
    num=$(echo $(todo.sh ls +next | wc -l))
    let todos=num-2
    if [ $todos != 0 ]
    then
      echo "$todos"
    else
      echo ""
    fi
  else
    echo ""
  fi
}

directory_name() {
  echo "%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}"
}

username() {
  echo "%{$fg_bold[grey]%}%n%{$reset_color%}"
}

host() {
  echo "%{$fg_bold[grey]%}@%m%{$reset_color%}"
}

#export PROMPT=$'\n$(rb_prompt) in $(directory_name) $(git_dirty)$(need_push)\n$(vi_mode) '
export PROMPT=$'\n$(username)$(host):$(directory_name) $(git_dirty)$(need_push)$(vi_mode) '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}$(todo)%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}

# vi mode
vi_mode() {
  echo "${VIMODE}"
}

if [[ "$VIMODE_COMMAND" == "" ]]; then
  VIMODE_COMMAND="command"
fi

if [[ "$VIMODE_INSERT" == "" ]]; then
  VIMODE_INSERT="insert"
fi

function zle-line-init zle-line-finish zle-keymap-select {
  export VIMODE="${${KEYMAP/vicmd/$VIMODE_COMMAND}/(main|viins)/$VIMODE_INSERT}"
  _update_ps1
  zle reset-prompt
  zle -R
}
zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

bindkey -a u undo
bindkey -a '^R' redo
bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'g~' vi-oper-swap-case
bindkey -a G end-of-buffer-or-history

zle -A .backward-kill-word vi-backward-kill-word
zle -A .backward-delete-char vi-backward-delete-char


n _update_ps1()
{
  export PROMPT="$(~/.dotfiles/submodules/powerline-zsh/powerline-zsh.py $?)"
}
precmd()
{
  _update_ps1
}

