export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# TMUX
if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi

# GIT
alias gs="git status"

function gitra() {
  git branch --list "$1" | xargs  git branch -D
}

function gitc() {
  git add -A
  git commit -m "$1"
  git push
}

# Other aliases
alias cfg="nvim ~/.config/nvim/init.lua"
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
