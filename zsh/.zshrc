# .zshrc - Zsh configuration file

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# Enable completion system
autoload -Uz compinit
compinit -u

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

# Personalized aliases
alias gohome="cd ~"
alias gocode="cd ~/code"
alias godot="cd ~/code/dotfiles"

# Add common paths (adjust as needed)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Homebrew (uncomment if you use Homebrew)
export PATH="/opt/homebrew/bin:$PATH"

# Python (uncomment if you use Python)
export PATH="$HOME/.local/bin:$PATH"

# Custom prompt (simple version)
export PS1="%F{blue}%n@%m%f:%F{green}%~%f$ "

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
