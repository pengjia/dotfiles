# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM='xterm-256color'
setopt RM_STAR_WAIT

export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward


ZSH_THEME="alanpeabody"

plugins=(git postgres redis-cli celery django fabric docker encode64 supervisor tmux z)

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export NVM_DIR=~/.nvm
    source $NVM_DIR/nvm.sh
    if [ -f ~/bin ]; then
        export PATH=~/bin:$PATH
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
else
    # unknown, do nothing
fi

###-tns-completion-start-###
if [ -f /Users/peter/.tnsrc ]; then 
    source /Users/peter/.tnsrc 
fi
###-tns-completion-end-###
