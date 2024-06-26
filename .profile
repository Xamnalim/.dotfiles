# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

prependToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

appendToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    prependToPathFront "$HOME/bin"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    prependToPathFront "$HOME/.local/bin"
fi

# go
export GOPATH=$HOME/go
prependToPathFront '/usr/local/go/bin'
prependToPathFront "$GOPATH/bin"

# default text editor
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"
export VISUAL=nvim
export EDITOR="$VISUAL"
export TIME_STYLE=long-iso # time format used by ls

if [ -f '/usr/bin/batcat' ] ; then
    export BAT_THEME='Catppuccin-mocha'
    export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
fi

