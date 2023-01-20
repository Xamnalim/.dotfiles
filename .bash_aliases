#alias ls='ls -lhv --color=auto --group-directories-first'
alias ls='lsd -lhv --color=auto --group-dirs=first'
alias la='ls -A'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias y='xclip'
alias p='xclip -o'

alias config='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'

alias bat='batcat' # bat is called batcat on ubuntu

alias asd='tmux_attach_default_session'
