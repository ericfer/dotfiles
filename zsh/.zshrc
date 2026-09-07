# .zshrc - Zsh configuration file

# Path to your oh-my-zsh installation (uncomment if you install oh-my-zsh)
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load (uncomment if using oh-my-zsh)
# ZSH_THEME="robbyrussell"

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# Enable completion system
autoload -Uz compinit
compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Colorize ls output
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Basic aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'

# Git aliases (uncomment if you use git)
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'

# Add common paths (adjust as needed)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Homebrew (uncomment if you use Homebrew)
# export PATH="/opt/homebrew/bin:$PATH"

# Node.js (uncomment if you use Node.js)
# export PATH="$HOME/.npm-global/bin:$PATH"

# Python (uncomment if you use Python)
# export PATH="$HOME/.local/bin:$PATH"

# Custom prompt (simple version)
export PS1="%F{blue}%n@%m%f:%F{green}%~%f$ "

# Load plugins (uncomment if using oh-my-zsh)
# plugins=(git brew node npm python)

# Source oh-my-zsh (uncomment if using oh-my-zsh)
# source $ZSH/oh-my-zsh.sh

# Custom functions
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Load local customizations if they exist
if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi
    
eval "$(starship init zsh)"
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
