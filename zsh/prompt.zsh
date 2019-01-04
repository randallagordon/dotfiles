if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Ensure custom Powerline segments are in the path
export PYTHONPATH="$HOME/.dotfiles/powerline-config:$PYTHONPATH"
if [ -d "$HOME/src/powerline/scripts" ]; then
    PATH="$HOME/src/powerline/scripts:$PATH"
fi

# Enable Powerline in Linux
if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# Enable custom local Powerline
if [[ -r ~/src/powerline/powerline/bindings/zsh/powerline.zsh ]]; then
    source ~/src/powerline/powerline/bindings/zsh/powerline.zsh
fi

# Enable Powerline in OSX
# if [[ -r $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    # source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
# fi

bindkey -a u undo
bindkey -a '^R' redo
bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'g~' vi-oper-swap-case
bindkey -a G end-of-buffer-or-history

zle -A .backward-kill-word vi-backward-kill-word
zle -A .backward-delete-char vi-backward-delete-char
