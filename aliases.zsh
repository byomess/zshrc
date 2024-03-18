# Misc====================================================

alias py="python"
alias mc="micro"
alias pn="pnpm"
alias ff="fastfetch"
alias nv="nvim"

alias qq='exit 0' # Quick exit
alias ee='exit 1' # Quick exit with error
alias grep='grep --color=auto' # Colored grep
alias rs='source $HOME/.zshrc' # Reload shell
alias rr='clear && rs' # Reload shell and clear screen
alias rrf='rr && fastfetch' # Reload shell, clear screen and fastfetch

# Size look-up =================================================================

function slu {
  local depth="${2:-1}"
  local results="-${3:-10}"
  du -ah --max-depth="$depth" "$1" | sort -rh | head "$results"
}

alias duf='df -h $1' # Overall disk usage


# Directory inspection =========================================================

alias l='lst $@' # List files in short format
alias ll='lst -Hpbc $@' # List files in long format
alias lll='lst -Hpbcmug $@' # List files in long format
alias la='lst -a $@' # List all files in short format
alias lla='lst -Hpbac $@'  # List all files in long format including hidden
alias llla='lst -Hpbacmug $@'  # List all files in long format including hidden

# alias l='lsd $@' # List files in short format
# alias ll='lsd -l' # List files in long format
# alias la='lsd -a $@' # List all files in short format
# alias lla='lsd -la $@'  # List all files in long format including hidden

function tl { # List directory tree in N levels of depth
    depth="${1:-1}"
    [ ${#@} -gt 0 ] && shift
    tree -CL $depth "$@"
}

function tla { # List directory all tree in N levels of depth
    depth="${1:-1}"
    [ ${#@} -gt 0 ] && shift
    tree -aCL $depth "$@"
}

function tld { # List directory tree in N levels of depth, only folders
    depth="${1:-1}"
    echo $depth
    [ ${#@} -gt 0 ] && shift
    tree -dCL $depth "$@"
}

function tlda { # List directory all tree in N levels of depth, only folders
    depth="${1:-1}"
    [ ${#@} -gt 0 ] && shift
    tree -adCL $depth "$@"
}


# Navigation shortcuts =========================================================

alias cl='cd $@ && ls' # CD then list files
alias al='cd ../$@ && ls' # Up a level and list files
alias a='cd ..' # One directory up


# Config files editing =========================================================

alias ez='nvim $HOME/.zshrc'
alias ea='nvim $HOME/.config/zsh/aliases.zsh'
alias ev='nvim $HOME/.vimrc'
alias en='nvim $HOME/.config/nvim'
alias esh='nvim $HOME/.ssh/config'


# Directory shortcuts ==========================================================

alias rep='cd ~/repos'
alias dwl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias pic='cd ~/Pictures'


# Network ======================================================================

alias ip4='curl -4 https://icanhazip.com' # get ipv4
alias ip6='curl -6 https://icanhazip.com' # get ipv6
alias ipl="ip -4 -o addr show scope global | awk '{split(\$4, a, \"/\"); print a[1]}'" # get local ip


# File operations ==============================================================

alias cx='chmod +x' # Make file executable
alias rmf='sudo rm -rf' # remove recursively, be careful!


# Date and time operations =====================================================

alias dt='date "+%Y-%m-%d" "$@"' # ISO 8601 format for the current date


# Git operations ===============================================================

alias gs='git status -sb' # Concise git status
