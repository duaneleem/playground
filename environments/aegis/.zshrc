# Libraries
source ~/Code/personal/playground/environments/library/linux/iterm.sh
source ~/Code/personal/playground/environments/library/linux/directory.sh
source ~/Code/personal/playground/environments/library/linux/network.sh
source ~/Code/personal/playground/environments/library/linux/docker-tools.sh

# Make vim the default editor.
export EDITOR=vim

# Force xterm so vim colors work when not in tmux too
export TERM=xterm-256color
export LANG=en_US.UTF-8
export EDITOR=vim

# Add NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# GOPATH Directory
export GOPATH='/Users/duaneleem/go'
export PATH="$PATH:/Users/duaneleem/go/bin"
export GOBIN='/Users/duaneleem/go/bin'

# Python 2 and 3
export PATH="$PATH:/Users/duaneleem/Library/Python/2.7/bin"
export PATH="$PATH:/Users/duaneleem/Library/Python/3.7/bin"

# JMeter
export PATH="$PATH:/Users/duaneleem/Applications/apache-jmeter-5.2.1/bin"

# Make git a bit easier.
alias g="git add . && git commit -m 'Made changes.' && git push"

# Kubernetes
## setup autocomplete in zsh into the current shell
source <(kubectl completion zsh)
## add autocomplete permanently to your zsh shell
# echo "[[ $commands[kubectl] ]] && source <(kubectl completion zsh)" >> ~/.zshrc
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

## You can also use a shorthand alias for kubectl that also works with completion:
alias k=kubectl
complete -F __start_kubectl k
