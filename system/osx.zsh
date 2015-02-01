# Tell OSX where to find Byobu settings
: ${BYOBU_PREFIX=$(brew --prefix)}
export BYOBU_PREFIX

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
alias owd='open `pwd`'
