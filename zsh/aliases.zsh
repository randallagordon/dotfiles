alias reload!='. ~/.zshrc'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."

alias sagi="sudo apt-get install"

#alias pbcopy='xclip -selection clipboard'
#alias pbpaste='xclip -selection clipboard -o'
alias pbc=pbcopy
alias pbp=pbpaste
alias tp="tee >(pbcopy)"

alias ni="node-inspector"
alias ni8043="node-inspector --web-port=8043"

alias ccat="pygmentize -O style=monokai -f console256 -g"

# Use the mosh mouse fix
alias mosh="moshm"

# Better ag output via less
alias ag='\ag --pager="less -XFR"'

# Local Tunnel
alias ltr='lt --subdomain randalldev'
alias ltd='lt --subdomain randalldevdoing'

alias canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias canary-headless="canary --remote-debugging-port=9222 --disable-gpu --headless"

alias tf="terraform"
