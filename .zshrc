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

export PATH=$HOME/.bin:/usr/local/bin:$PATH


source $ZSH/oh-my-zsh.sh
if [ -f "~/.extra" ]; then
	source ~/.extra
fi

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/"
export GOPATH="$HOME/workspace/go"
export PATH=$GOPATH/bin:/usr/local/opt/openjdk@13/bin:/usr/local/Cellar/perl/5.28.0/bin:$PATH
export GOPROXY=https://goproxy.io

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# nodejs
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
