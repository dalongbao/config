# =====================
# Nix Init 
# =====================
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

if [ -e '/etc/profile.d/nix.sh' ]; then
  . '/etc/profile.d/nix.sh'
fi

export PATH=$HOME/.nix-profile/bin:/nix/var/nix/profiles/default/bin:$PATH
alias fastfetch='nix-shell -p fastfetch --run fastfetch'
fastfetch

# =====================
# Environment Variables
# =====================
# CUDA Setup
export CUDA_HOME=/usr/local/cuda
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

# Model Directory
export MODEL_FOLDER=~/models

# API Keys
export ALPHAVANTAGE_API_KEY="HYCSOU3FQ8I9BMF4"

# Book References
export rl='Reinforcement Learning'
export tcpl='The C Programming Language'
export opv='Option Pricing and Volatility'
export odi='OS Design and Implementation'
export ci='Crafting Interpreters'
export cbe='CUDA by Example'
export csapp="Computer Science: A Programmer's Perspective"
export ofod="Options, Futures, and Other Derivatives"
export ita="Introduction to Algorithms"

# =====================
# Path Configuration
# =====================
# Base PATH
export PATH="$HOME/miniconda3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$PATH"

# Conda Setup (should be last to take priority)
export PATH="$HOME/miniconda3/bin:$PATH"
eval "$($HOME/miniconda3/bin/conda shell.zsh hook)"

# =====================
# Custom Functions
# =====================
# Create and enter directory
mc() {
    mkdir -p "$1" && cd "$1"
}

# Enhanced cd command
cd() {
    if [ "$#" -eq 0 ]; then
        builtin cd ~
    else
        builtin cd "$@"
    fi
}

# Git clone helper
gc() {
    if [ -z "$1" ]; then
        echo "Usage: gc username/repo [branch]"
        return 1
    fi
    repo_url="https://github.com/$1"
    branch="${2:-}"
    if [ -n "$branch" ]; then
        git clone -b "$branch" "$repo_url"
    else
        git clone "$repo_url"
    fi
}

# =====================
# Aliases
# =====================
# Git aliases
alias gs="git status"
alias g="git"
alias ga="git add ."
alias gas="git add .; git status"
alias gcm="git commit -m"
alias gam="git add .; git commit -m"
alias push="~/push.sh"
alias github="https://github.com"

# Neovim aliases (typo corrections)
alias nbim="nvim"
alias nv="nvim"
alias nvom="nvim"
alias nvin="nvim"
alias ncim="nvim"
alias vnum="nvim"
alias vnim="nvim"
alias nvm="nvim"
alias ivnm="nvim"
alias nvmi="nvim"
alias nivm="nvim"

# Python development aliases
alias sea="source env/bin/activate"
alias sz="source ~/.zshrc"
alias pup="pip install --upgrade pip"
alias pve="python -m venv env"
alias pr="pip install -r requirements.txt"
alias python="python3"
alias treee="tree -I env"
alias cs="clear; sz"
alias rebuild="rm -rf build; pip install ."

# LLM aliases
alias orl="ollama run llama3.1"
alias orq="ollama run qwen2.5-coder:latest"

# System aliases
alias fastfetch='nix-shell -p fastfetch --run fastfetch'

# =====================
# System Configuration
# =====================
# Nix configuration
source /etc/profile.d/nix.sh

# Keyboard configuration
xmodmap ~/.Xmodmap

# Prompt customization
PROMPT='%F{6}dalongbao@%m%f %1~ %# '

# Clipboard setting
set clipboard=unnamed
