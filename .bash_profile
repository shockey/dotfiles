# dest: ~/.bash_profile

export EDITOR=/usr/bin/nano

alias ls='ls -G'
alias f='open -a Finder ./'
alias c='clear'
alias mkdir='mkdir -pv'
alias rm='rm -I --preserve-root' # makes rm less aggressive
alias dir='ls' # don't judge

d() { builtin cd "$@"; ll; }


alias ..='cd ../'                           
alias ...='cd ../../'                       
alias .3='cd ../../../'                     
alias .4='cd ../../../../'                  
alias .5='cd ../../../../../'               
alias .6='cd ../../../../../../'  