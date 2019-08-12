# Figure out why the new nvm activation setup doesn't maintain the
# previously selected version across shells. Supposedly not supposoed to:
#
# https://github.com/creationix/nvm/issues/1056
#
# So things may be "more correct" but certainly more annoying :/
#
#
# Activate NVM
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Activate NVM
eval NVM_DIR="~/.nvm"
export NVM_DIR
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Auto change the nvm version based on a .nvmrc file based on the current directory. See https://github.com/creationix/nvm/issues/110#issuecomment-190125863
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc
