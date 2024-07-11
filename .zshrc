source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
# source "$HOME/.vim/bundle/vim-colorschemes/colors/gruvbox.vim"

alias gs="git status"
alias g="git"
alias ga="git add ."
alias nbim="nvim"
alias nv="nvim"
alias push="~/push.sh"

PROMPT='%F{6}%n@%m%f %1~ %# '
export PYENV_ROOT="$HOME/.pyenv"
set clipboard=unnamed
alias tmux="TERM=screen-256color-bce tmux"

compctl -M '' 'm:{a-zA-Z}={A-Za-z}'

if [[ "$XDG_SESSION_TYPE" == "wayland" ]]; then
  alias pbcopy='wl-copy'
  alias pbpaste='wl-paste'
else
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi

cat ~/art.txt
