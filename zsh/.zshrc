export ZSH=/home/me/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git,thefuck)

source $ZSH/oh-my-zsh.sh

export GOPATH=/home/me/dev/GoDev
export PATH=$PATH:$GOPATH/bin

eval "$(thefuck --alias FUCK)"
eval "$(thefuck --alias)"

source /home/me/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="/home/me/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
