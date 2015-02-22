# dest: ~/.bash_profile

export EDITOR='/usr/bin/nano -BSOcim'

# command changes
alias ls="ls -AFGhlo"
alias mkdir='mkdir -pv'
alias rm='rm --preserve-root' # makes rm less dangerous
alias nano='nano -BSOcim'

d() { builtin cd "$@"; ll; }

# new commands
alias ..='cd ../'                           
alias ...='cd ../../'                       
alias .3='cd ../../../'                     
alias .4='cd ../../../../'                  
alias .5='cd ../../../../../'               
alias .6='cd ../../../../../../'  
alias ~='cd ~/'
alias dir='ls' # don't judge
alias rmi='rm -I'
alias f='open -a Finder ./'
alias c='clear'