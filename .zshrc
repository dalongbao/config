source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

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
alias orl="ollama run llama3.1"

mc() {
    mkdir -p "$1" && cd "$1"
}

set clipboard=unnamed
PROMPT='%F{2}dalongbao@%m%f %1~ %# ' # 6: blue, 1, 9: red, : white, 4: purple, 5: pink, 7: grey

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"

alias tmux="TERM=screen-256color-bce tmux"

export rl='Reinforcement Learning'
export tcpl='The C Programming Language'
export opv='Option Pricing and Volatility'
export odi='OS Design and Implementation'
export ci='Crafting Interpreters'
export cbe='CUDA by Example'
export csapp="Computer Science: A Programmer's Perspective"
export ofod="Options, Futures, and Other Derivatives"
export ita="Introduction to Algorithms"

cat ~/terminalart/art.txt
# ./donut

