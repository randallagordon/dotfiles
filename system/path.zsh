export PATH="./bin:./node_modules/.bin:$HOME/bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:$HOME/.sfs:$ZSH/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export NODE_PATH="$NODE_PATH:/usr/local/lib/node_modules:/usr/local/lib/jsctags"

# A place for local executables to live
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
