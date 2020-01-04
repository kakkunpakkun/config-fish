# set PATH
set PATH $HOME/.cargo/bin $HOME/.tfenv/bin $HOME/.rbenv/bin $PATH

# use exa instead of ls
alias ls='exa'

# git status
alias g='git'
alias gst='git status'
alias ga='git add'
alias gd='git diff'
alias gc='git commit'
alias git_current_branch="git branch | grep \* | cut -d ' ' -f2"
alias ggpull='git pull origin (git_current_branch)'
alias ggpush='git push origin (git_current_branch)'

# cd to ~/Workspace
alias cdw='cd ~/Workspace'

# set bobthefish not to display ruby
set -g theme_display_ruby no