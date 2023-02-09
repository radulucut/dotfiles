export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi

function gitra() {
  git branch --list "$1" | xargs  git branch -D
}

function gitc() {
  git add -A
  git commit -m "$1"
  git push
}
