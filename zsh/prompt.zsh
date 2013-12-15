# Ensure custom segments are in the path
export PYTHONPATH="$HOME/.dotfiles/powerline-config:$PYTHONPATH"

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

if [[ "$VIMODE_COMMAND" == "" ]]; then
	VIMODE_COMMAND="command"
fi

if [[ "$VIMODE_INSERT" == "" ]]; then
	VIMODE_INSERT="insert"
fi

function zle-line-init zle-line-finish zle-keymap-select {
	export VIMODE="${${KEYMAP/vicmd/$VIMODE_COMMAND}/(main|viins)/$VIMODE_INSERT}"
	export BGJOBS="`jobs -l | wc -l`"
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

