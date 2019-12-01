# Libraries
source ~/Code/personal/playground/environments/library/linux/iterm.sh
source ~/Code/personal/playground/environments/library/linux/directory.sh
source ~/Code/personal/playground/environments/library/linux/network.sh

# Make vim the default editor.
export EDITOR=vim

# Force xterm so vim colors work when not in tmux too
export TERM=xterm-256color
export LANG=en_US.UTF-8
export EDITOR=vim

# Make git a bit easier.
alias g="git add . && git commit -m 'Made changes.' && git push"
