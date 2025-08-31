# Helper function aliases
source "$HOME/.zsh/helpers.zsh"

# Global variables
source "$HOME/.zsh/envs.zsh"

# Add custom directories to the PATH
xpath "$HOME/.local/bin"
xpath "$HOME/.yarn/bin"
xpath "$HOME/scripts/bin"
xpath "$PNPM_HOME"

# Load custom Zsh functions
xfpath "$HOME/.zsh_functions"
xfpath "$HOME/.zsh/plugins/zsh-completions/src"

# Set ZSH theme
# ZSH_THEME="robbyrussell"

# Set Oh-My-Zsh plugins
plugins=(
  git
  fzf
  jsontools
  jump
  pass
  #catimg
  dotenv
  aliases
  archlinux
  starship
  #ai-suggestions
)

# Load Oh-My-Zsh
xsource "$ZSH/oh-my-zsh.sh"

# Load Zsh plugins
xsource "$HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
xsource "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
#xsource "$HOME/.oh-my-zsh/custom/plugins/ai-suggestions/ai-suggestions.plugin.zsh"

# Load aliases
xsource "$HOME/.zsh/aliases.zsh"

# Load NVM
xsource "$NVM_DIR/nvm.sh"
xsource "$NVM_DIR/bash_completion"
xpath "$(nvm which current)"

# Load Powerlevel10k theme
# xsource "$HOME/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme"
# xsource "$HOME/.zsh/p10k.zsh"



