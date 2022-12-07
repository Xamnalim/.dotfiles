# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
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

# rust 
. "$HOME/.cargo/env"

# go
export GOPATH=$HOME/go
prependToPathFront '/usr/local/go/bin'
prependToPathFront "$GOPATH/bin"

# nodejs
prependToPathFront '/usr/local/nodejs/bin'

# default text editor
export VISUAL=vim
export EDITOR="$VISUAL"
