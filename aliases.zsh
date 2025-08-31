# Misc====================================================

alias py="python"
alias mc="micro"
alias pn="pnpm"
alias ff="fastfetch --logo none"
alias ffl="fastfetch"
alias v="vim"
alias nv="nvim"
alias lg="lazygit"
alias p="pacui"
alias n="nnn"
alias t="tmux"
alias xp="xpac"
alias td="todo.sh"

alias qq="exit 0"                         # Quick exit
alias grep="grep --color=auto"            # Colored grep
alias rs="source $HOME/.zshrc"            # Reload shell
alias st="tmux source ~/.tmux.conf"       # Reload tmux
alias rr="clear && rs"                    # Reload shell and clear screen
alias rrf="rr && fastfetch"               # Reload shell, clear screen and fastfetch
alias rnx="systemctl reload nginx"        # Reload nginx
alias rrnx="sudo systemctl restart nginx" # Restart nginx

alias ets="source torsocks on"
alias dts="source torsocks off"

alias sc1="sudo systemctl start"
alias sc2="sudo systemctl stop"
alias sc3="sudo systemctl restart"
alias sc4="sudo systemctl status"
alias sc-start="sudo systemctl start"
alias sc-stop="sudo systemctl stop"
alias sc-restart="sudo systemctl restart"
alias sc-status="sudo systemctl status"

alias pz="$HOME/Games/Project\ Zomboid/game/projectzomboid.sh"
alias pzd="$HOME/Games/Project\ Zomboid/game/projectzomboid.sh -debug"

# Util system operations =================================================================

alias clear-ram="echo 3 | sudo tee /proc/sys/vm/drop_caches"

# Size look-up =================================================================

function slu {
    calc_path="${1:-.}"
    depth="${2:-1}"
    results="${3:-999999}"
    du -ah --max-depth="$depth" "$calc_path" | sort -h | tail -n "$results"
}

alias duf='df -h $1' # Overall disk usage

# Directory inspection =========================================================

# eza aliases
alias eza='eza --icons=always --color-scale-mode=gradient --color-scale --group-directories-first --time-style=long-iso'
alias l='eza'                                                # List files in short format
alias la='eza -a'                                            # List all files in short format
alias ll='eza -l --no-user --no-permissions'                 # List files in long format
alias lla='eza -la --no-user --no-permissions'               # List all files in long format including hidden
alias llx='eza -l --no-user --no-permissions --total-size'   # List files in long format with total size
alias llax='eza -la --no-user --no-permissions --total-size' # List all files in long format with total size
alias lll='eza -lg'                                          # List files in long format
alias llla='eza -lag'                                        # List all files in long format including hidden
alias lllx='eza -lg --total-size'                            # List files in long format with total size
alias lllax='eza -lag --total-size'                          # List all files in long format with total size

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

function e {
    $EDITOR $@
}

# Navigation shortcuts =========================================================

alias cl='f() { cd $@ && eza }; f' # CD then list files
alias al='f() { cd .. && eza }; f' # CD then list files in long format
alias a="cd .."                    # One directory up
alias aa="cd ../.."                # Two directories up
alias aaa="cd ../../.."            # Three directories up
alias aaaa="cd ../../../.."        # Four directories up
alias aaaaa="cd ../../../../.."    # Five directories up

# Config files editing =========================================================

alias ebc="$EDITOR $HOME/.bashrc"
alias ezc="$EDITOR $HOME/.zshrc"
alias ezm="$EDITOR $HOME/.zsh/main.zsh"
alias ezs="$EDITOR $HOME/.zsh/aliases.zsh"
alias eze="$EDITOR $HOME/.zsh/envs.zsh"
alias ezh="$EDITOR $HOME/.zsh/helpers.zsh"
alias evc="$EDITOR $HOME/.vimrc"
alias enc="cd $HOME/.config/nvim && $EDITOR . && cd -"
alias eni="$EDITOR $HOME/.config/nvim/init.lua"
alias elv="$EDITOR $HOME/.config/nvim/lua/config/lazy.lua"
alias esc="$EDITOR $HOME/.config/starship.toml"
alias etc="$EDITOR $HOME/.tmux.conf"
alias etlc="$EDITOR $HOME/.tmux.conf.local"
alias eac="$EDITOR $HOME/.config/alacritty/alacritty.toml"
alias esshc="$EDITOR $HOME/.ssh/config"
alias ekcc="$EDITOR /usr/share/plasma/plasmoids/org.kde.plasma.volume/contents/ui/main.qml"
alias enx="sudo -E $EDITOR /etc/nginx/nginx.conf"

alias epc="sudo $EDITOR /etc/pacman.conf"
alias eml="sudo $EDITOR /etc/pacman.d/mirrorlist"

# Directory shortcuts ==========================================================

alias dld="cd $HOME/Downloads"
alias doc="cd $HOME/Documents"
alias pic="cd $HOME/Pictures"
alias mus="cd $HOME/Music"
alias vid="cd $HOME/Videos"
alias rep="cd $HOME/repos"
alias replib="cd $HOME/repos/lib"
alias lib="cd $HOME/repos/lib"
alias scr="cd $HOME/scripts"
alias wrd="cd $HOME/.wine/drive_c"

# Network ======================================================================

alias ip4="curl -4 https://icanhazip.com"                                              # get ipv4
alias ip6="curl -6 https://icanhazip.com"                                              # get ipv6
alias ipl="ip -4 -o addr show scope global | awk '{split(\$4, a, \"/\"); print a[1]}'" # get local ip

# File operations ==============================================================

alias cx="chmod +x" # Make file executable
alias rmf="rm -rf"

# Date and time operations =====================================================

alias dt='date "+%Y-%m-%d" "$@"' # ISO 8601 format for the current date

# Git operations ===============================================================

alias gs="git status -sb" # Concise git status

# Misc =========================================================================

alias pni="pnpm install"
alias pnb="pnpm build"
alias pns="pnpm start"
alias pnd="pnpm dev"
