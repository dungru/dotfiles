SHELL := bash

DEIN_INSTALLER ?= https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh


# all: bashrc tmuxconf vimrc gitconfig

all: bashrc vimrc gitconfig ssh_config

ssh_config:
	ln -sf $(PWD)/.ssh/config $(HOME)/.ssh/config

bashrc:
	ln -sf $(PWD)/.bash_profile $(HOME)/.bash_profile

vimrc:
	ln -sf $(PWD)/.vimrc $(HOME)/.vimrc
	ln -sf $(PWD)/.vim $(HOME)
ifeq ("$(wildcard $(HOME)/.vim/dein)", "")
	curl -sL $(DEIN_INSTALLER) | bash -s $(HOME)/.vim/dein
endif

# tmuxconf:
	ln -sf $(PWD)/.tmux.conf $(HOME)/.tmux.conf

gitconfig:
	ln -sf $(PWD)/.gitignore_global $(HOME)/.gitignore_global
	$(shell git config --global core.excludesFile '~/.gitignore_global')
# 	ln -sf $(PWD)/.gitconfig $(HOME)/.gitconfig
