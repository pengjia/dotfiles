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
if [ -f $HOME/.tnsrc ]; then 
    source $HOME/.tnsrc 
fi
###-tns-completion-end-###

### anaconda
if [ -f $HOME/.anaconda3/bin/activate ]; then
    source $HOME/.anaconda3/bin/activate
fi
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
export CUDA_HOME=/usr/local/cuda
