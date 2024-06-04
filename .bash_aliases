# lsd as ls
alias ls='lsd -lhv --color=auto --group-dirs=first'
alias la='ls -A'

# grep with nice colors
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# copying and pasting using clipboard
alias y='xclip -sel clip'
alias p='xclip -sel clip -o'

# dotfiles git repo
alias config='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'

# bat - cat with colors (bat is called batcat on ubuntu)
alias bat='batcat' 

# default tmux session
alias asd='tmux_attach_default_session'

# nvim aliases
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"

# lazygit
alias lg="lazygit"
