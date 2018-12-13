# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM='xterm-256color'
setopt RM_STAR_WAIT

export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

ZSH_THEME="avit"

plugins=(git git-flow-avh docker tmux z)

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

if [ -d "$HOME/.nvm" ]; then
    export NVM_DIR=$HOME/.nvm
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
        source $NVM_DIR/nvm.sh
        if [ -f ~/bin ]; then
            export PATH=~/bin:$PATH
        fi
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        source $(brew --prefix nvm)/nvm.sh
    else
        # unknown, do nothing
    fi
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
if [ -f $HOME/anaconda3/bin/activate ]; then
    source $HOME/anaconda3/bin/activate
fi
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
export CUDA_HOME=/usr/local/cuda
export GOPATH="$HOME/code/go"
export PATH=$GOPATH/bin:$PATH

alias kbaseprod="kubectl --cluster kubernetes --user admin -n "
alias kdevbase="kubectl --cluster kubernetes-dev --user dev-admin -n "
alias kprod="kbaseprod data-prod"
alias kstag="kbaseprod data-staging"
alias kinfra="kbaseprod infra"
alias ksys="kbaseprod kube-system"
alias kmon="kbaseprod monitoring"
alias king="kbaseprod ingress-nginx"
alias kdev="kbasedev data-dev"
alias ktest="kbasedev data-test"

