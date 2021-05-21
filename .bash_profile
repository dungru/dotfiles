if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
############## Function ##############
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

############## Environment Variabble ##############

export PS1='\[\033[1;35m\]\u@\h\[\033[1;33m\]:\w \[\e[91m\]$(parse_git_branch)\[\033[00m\]$ '
export PATH=$HOME/.local/bin:$PATH
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="UTF-8"
export LANG="en_US.UTF-8"
export TERM='xterm-256color'

if [ $(uname) == "Darwin" ]; then
    source "`brew --prefix`/etc/grc.bashrc"
    export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export CSCOPE_EDITOR=vim
##############  Alias ##############
export CLICOLOR=1
export LSCOLORS=HxFxBxDxCxegedabagacad
if [ "$(uname)" == "Darwin" ]; then
    # set for Mac
    alias ls='ls -GFH'
else
    alias ls='ls --color=auto'
    LS_COLORS=$LS_COLORS:'di=1;1;40;37:' ; export LS_COLORS
fi
alias ll='ls -al'
alias python=/usr/local/bin/python3.8
alias grep='grep --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff="diff -ubBw"
alias less="less -R"

alias mount-gdrive="rclone mount gd: ${HOME}/gdrive --allow-non-empty --vfs-cache-mode writes --daemon"
alias umount-gdrive="fusermount -qzu ${HOME}/gdrive"

source "$HOME/.cargo/env"
