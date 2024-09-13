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

plugins=(git git-flow-avh docker z)

export PATH=$HOME/.bin:/usr/local/bin:$PATH


source $ZSH/oh-my-zsh.sh
if [ -f "~/.extra" ]; then
	source ~/.extra
fi

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/"
export GOPATH="$HOME/workspace/go"
export PATH=$GOPATH/bin:/usr/local/opt/openjdk@13/bin:/usr/local/Cellar/perl/5.28.0/bin:/opt/homebrew/bin:$PATH
export GOPROXY=https://goproxy.io

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
