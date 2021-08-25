# list aliases
alias laa='less $HOME/bin/.al_helper'
alias ll='ls -alhF --group-directories-first --color=auto'
alias la='ls -A --group-directories-first --color=auto'
alias l='ls -CF --group-directories-first --color=auto'
alias ls='ls --group-directories-first --color=auto'

# dir colours
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# mv aliases
alias mv='mv --verbose'

# apt aliases
alias a='sudo apt'
alias ag='sudo apt-get'

# git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '

# newsboat rss
alias newsboat-add='function add_rss(){echo "$1" >> $HOME/.newsboat/urls};add_rss'
alias newsboat-edit='code $HOME/.newsboat/urls'
alias rss='newsboat'

# xclip
alias cop="xclip -i"
alias ps="xclip -o"

# conda aliases
alias cona='conda activate'
alias conx='conda deactivate'

# vim aliases
alias v='vim'
alias vplug='cd ~.vim/pack/vendor/start/'

