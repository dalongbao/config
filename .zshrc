alias gs="git status"
alias g="git"
alias ga="git add ."
alias gas="git add .; git status"
alias gcm="git commit -m"
alias gam="git add .; git commit -m"
alias push="~/push.sh"

alias nbim="nvim"
alias nv="nvim"
alias nvom="nvim"
alias nvin="nvim"
alias ncim="nvim"
alias vnum="nvim"
alias vnim="nvim"
alias vnim="nvim"
alias nvm="nvim"
alias ivnm="nvim"
alias nvmi="nvim"
alias nivm="nvim"

alias sea="source env/bin/activate"
alias sz="source ~/.zshrc"
alias pup="pip install --upgrade pip"
alias pve="python -m venv env"
alias pr="pip install -r requirements.txt"
alias python="python3"
alias treee="tree -I env"
alias cs="clear; sz"

alias orl="ollama run llama3.1"
alias orq="ollama run qwen2.5-coder:latest"

# alias fastfetch="fastfetch -c ~/.config/fastfetch/config.jsonc"
alias fastfetch='nix-shell -p fastfetch --run fastfetch'

mc() {
    mkdir -p "$1" && cd "$1"
}

set clipboard=unnamed
PROMPT='%F{6}dalongbao@%m%f %1~ %# ' # 6: blue, 1, 9: red, : white, 4: purple, 5: pink, 7: grey, 2: green?

# Case insensitive cd
cd() {
    if (( $+2 )); then
        builtin cd "$@"
        return
    fi
    if [ -d "$1" ]; then
        builtin cd "$1"
        return
    fi
    if [ -f "$1" ]; then
        echo "cd: not a directory: $1"
        return 1
    fi
    if [ ! -d "$1" ]; then
        # Convert the path to lowercase for comparison
        local dir_lower="$(echo $1 | tr '[:upper:]' '[:lower:]')"
        # Find matching directory ignoring case
        local dir_match="$(find . -maxdepth 1 -type d -iname "$1" -print -quit 2>/dev/null)"
        if [ -n "$dir_match" ]; then
            builtin cd "$dir_match"
            return
        fi
    fi
    builtin cd "$1"
}

# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

export rl='Reinforcement Learning'
export tcpl='The C Programming Language'
export opv='Option Pricing and Volatility'
export odi='OS Design and Implementation'
export ci='Crafting Interpreters'
export cbe='CUDA by Example'
export csapp="Computer Science: A Programmer's Perspective"
export ofod="Options, Futures, and Other Derivatives"
export ita="Introduction to Algorithms"

# cat ~/terminalart/art.txt
# ./donut
fastfetch
