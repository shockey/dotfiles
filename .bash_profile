# dest: ~/.bash_profile

export EDITOR=/usr/bin/nano

alias ls='ls -G'
alias f='open -a Finder ./'
alias c='clear'
alias mkdir='mkdir -pv'
alias rmi='rm -I'
alias rm='rm --preserve-root' # makes rm less aggressive
alias dir='ls' # don't judge
alias ~='cd ~/'

d() { builtin cd "$@"; ll; }


alias ..='cd ../'                           
alias ...='cd ../../'                       
alias .3='cd ../../../'                     
alias .4='cd ../../../../'                  
alias .5='cd ../../../../../'               
alias .6='cd ../../../../../../'  