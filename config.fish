set -x DENO_INSTALL /Users/kp/.local
# set PATH
set -x PATH $HOME/.cargo/bin $HOME/.tfenv/bin $PATH
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $DENO_INSTALL/bin $PATH

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# use exa instead of ls
alias ls='exa'
alias l='ls'
alias la='ls -lag'

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

# hooks for direnv
function __direnv_export_eval --on-event fish_prompt;
    "/usr/local/bin/direnv" export fish | source;
end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kp/google-cloud-sdk/path.fish.inc' ]; . '/Users/kp/google-cloud-sdk/path.fish.inc'; end
