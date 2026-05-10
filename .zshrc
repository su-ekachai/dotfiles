# ==============================================================================
# 1. PRE-INITIALIZATION (Performance & Caching)
# ==============================================================================
# Enable Powerlevel10k instant prompt. Must stay at the very top.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ==============================================================================
# 2. ENVIRONMENT VARIABLES & PATHS
# ==============================================================================
# Base Paths
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

# Tool-Specific Paths
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"  # Added by Antigravity

# Environment Configuration
export EDITOR="nvim"
export ENABLE_LSP_TOOLS=1  # Enable Claude LSP Tool


# ==============================================================================
# 3. TOOL INITIALIZATIONS (Version Managers)
# ==============================================================================
# Initialize rbenv BEFORE Oh My Zsh so plugins use the correct Ruby version
eval "$(rbenv init - zsh)"


# ==============================================================================
# 4. OH MY ZSH FRAMEWORK
# ==============================================================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard Oh My Zsh Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-completions
)

# Load Oh My Zsh Core
source $ZSH/oh-my-zsh.sh


# ==============================================================================
# 5. EXTERNAL PLUGINS & TAB COMPLETIONS
# ==============================================================================
# Load external autocomplete plugin
source $ZSH_CUSTOM/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# Load colorls tab completion (relies on rbenv being loaded in Section 3)
source $(dirname $(gem which colorls))/tab_complete.sh


# ==============================================================================
# 6. ALIASES
# ==============================================================================
# Python Paths
alias python="python3"
alias pip="pip3"

# Editor overrides
alias vi="nvim"
alias vim="nvim"
alias oldvim="vim"

# Modern replacements
alias ls="colorls"
alias sls="ls"

# AI Tools
alias cs="source ~/.local/bin/claude-switch"


# ==============================================================================
# 7. POST-INITIALIZATION (Theme Config)
# ==============================================================================
# Load Powerlevel10k configuration file
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
