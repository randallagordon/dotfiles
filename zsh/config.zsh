if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

# History setup
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear:clr:[bf]g"

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE # don't record commands starting with a space

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
#setopt complete_aliases

zle -N newtab

# bindkey '^[^[[D' backward-word
# bindkey '^[^[[C' forward-word
# bindkey '^[[5D' beginning-of-line
# bindkey '^[[5C' end-of-line
# bindkey '^[[3~' delete-char
# bindkey '^[^N' newtab

# Vim Mode with 'jj' to exit INSERT
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode

# Bind ZZ to exit the shell a la Vim write & exit
function zshexit {
  exit
}
zle -N zshexit

bindkey 'ZZ' zshexit

# TODO: Make setup match Vim more closely, especially work on making del/backspace and home/end work properly

# Re-map some of the more common shell motions
# Essentials
bindkey '^b' backward-char
bindkey '^f' forward-char
bindkey '^d' delete-char
bindkey '^_' undo
bindkey '^[b' backward-word
bindkey '^[f' forward-word

# Movement
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# History
bindkey '^p' up-history
bindkey '^n' down-history
bindkey '^r' history-incremental-search-backward
bindkey '^f' history-incremental-search-forward

# Kill/yank
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^k' vi-kill-eol
bindkey '^[d' kill-word
