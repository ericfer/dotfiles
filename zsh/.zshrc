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


## ALIASES
# Basic aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias glog='git log --oneline --graph'
alias gd='git diff'

# Personalized aliases
alias gohome="cd ~"
alias gocode="cd ~/code"
alias godot="cd ~/code/dotfiles"


## PATH
# Add common paths
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# Homebrew
export PATH="/opt/homebrew/bin:$PATH"


# Custom functions
mkcd() {
    mkdir -p "$1" && cd "$1"
}



## LOADING LIBS (at the end of file)

# Load local customizations if they exist
if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

# Load other tools
eval "$(starship init zsh)"
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
