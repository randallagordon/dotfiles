# Tell OSX where to find Byobu settings
: ${BYOBU_PREFIX=$(brew --prefix)}
export BYOBU_PREFIX

export JAVA_HOME=\$(/usr/libexec/java_home)
export ANDROID_HOME='/Users/randall/Library/Android/sdk'
export ANDROID_SDK="/Users/randall/Library/Android/sdk/tools/"
export ANDROID_SDK_PLATFORM="/Users/randall/Library/Android/sdk/platform-tools/"
export PATH="$PATH:$ANDROID_HOME:$ANDROID_SDK:$ANDROID_SDK_PLATFORM:/usr/local/opt/openjdk/bin:~/Library/Python/2.7/bin"

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
alias owd='open `pwd`'
