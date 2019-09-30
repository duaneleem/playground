# Libraries
source ~/Code/Playground/Notes/environments/library/linux/iterm.sh
source ~/Code/Playground/Notes/environments/library/linux/directory.sh
source ~/Code/Playground/Notes/environments/library/linux/network.sh

# Personal Session CLIs which includes the following:
## Kubernetes CLI for EKS
export PATH=$HOME/bin:$PATH

# Make vim the default editor.
export EDITOR=vim

# MySQL Client
PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS

# Force xterm so vim colors work when not in tmux too
export TERM=xterm-256color
export LANG=en_US.UTF-8
export EDITOR=vim

# Make git a bit easier.
alias g="git add . && git commit -m 'Made changes.' && git push"

