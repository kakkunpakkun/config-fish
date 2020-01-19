# set PATH
set -x PATH $HOME/.cargo/bin $HOME/.tfenv/bin $PATH
set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths

# rbenv
status --is-interactive; and source (rbenv init -|psub)

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

# hooks for direnv
function __direnv_export_eval --on-event fish_prompt;
    "/usr/local/bin/direnv" export fish | source;
end
