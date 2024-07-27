source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

alias gs="git status"
alias g="git"
alias ga="git add ."
alias push="~/push.sh"

alias nbim="nvim"
alias nv="nvim"
alias nvom="nvim"
alias nvin="nvim"
alias ncim="nvim"
alias vnum="nvim"
alias vnim="nvim"

alias sea="source env/bin/activate"
alias python="python3"
alias treee="tree -I env"

set clipboard=unnamed
PROMPT='%F{6}vesicularia@%m%f %1~ %# '

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias tmux="TERM=screen-256color-bce tmux"

export rl='Reinforcement Learning'
export tcpl='The C Programming Language'
export opv='Option Pricing and Volatility'
export odi='OS Design and Implementation'
export ci='Crafting Interpreters'
export cbe='CUDA by Example'

cat ~/art.txt
