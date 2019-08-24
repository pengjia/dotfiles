# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM='xterm-256color'
setopt RM_STAR_WAIT

export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

ZSH_THEME="michelebologna"

plugins=(git git-flow-avh docker tmux z)

export PATH=$HOME/bin:/usr/local/bin:$PATH


source $ZSH/oh-my-zsh.sh
if [ -f "~/.extra" ]; then
	source ~/.extra
fi

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/"
export CUDA_HOME=/usr/local/cuda
export GOPATH="$HOME/code/go"
export PATH=$GOPATH/bin:/usr/local/Cellar/perl/5.28.0/bin:$PATH
export GOPROXY=https://goproxy.io

alias econda="source $HOME/.anaconda3/bin/activate"
alias kbaseprod="kubectl --context kubernetes -n "
alias kbasedev="kubectl --context kubernetes-dev -n "
alias kprod="kbaseprod data-prod"
alias kstag="kbaseprod data-staging"
alias kinfra="kbaseprod infra"
alias ksys="kbaseprod kube-system"
alias kmon="kbaseprod monitoring"
alias king="kbaseprod ingress-nginx"
alias kdev="kbasedev data-dev"
alias ktest="kbasedev data-test"
alias hprod="helm --tiller-namespace deploy --kube-context kubernetes"
alias hdev="helm --tiller-namespace deploy --kube-context kubernetes-dev"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
