# ex: ts=2 sw=2 et filetype=bash

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\[\033[0;35m\]\u@\h\[\033[0;33m\]:\w \[\e[91m\]$(parse_git_branch)\[\033[00m\]$ '

alias grep='grep --color=auto'
alias python=/usr/local/bin/python3.8
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ $(uname) == "Darwin" ]; then
    source "`brew --prefix`/etc/grc.bashrc"
fi
